var larvitdb = require('larvitdb'),
    unicode  = require('./territoryContainment.json'),
    sql      = 'SELECT name FROM geo_regions WHERE id = ?',
    regionId;

function handleRegionId(regionId) {
	var dbFields = [regionId];

	larvitdb.query(sql, dbFields, function(err, rows) {
		var region,
		    i,
		    subRegion;

		if (err) {
			throw err;
		}

		console.log('Trying "' + regionId + '"');

		if (rows.length) {
			region = unicode.supplemental.territoryContainment[regionId];

			i = 0;
			while (region._contains[i] !== undefined) {
				subRegion = region._contains[i];

				if (subRegion.replace(/[^0-9.]/g, '') !== subRegion) {
					larvitdb.query('INSERT IGNORE INTO geo_regions_territory (id, contains) VALUES(?,?);', [regionId, subRegion], function(err) {
						if (err) {
							throw err;
						}
					});
				} else {
					larvitdb.query('INSERT IGNORE INTO geo_regions_region (id, contains) VALUES(?,?);', [regionId, subRegion], function(err) {
						if (err) {
							throw err;
						}
					});
				}

				i ++;
			}
			//console.log(region._contains);
			console.log('Region found for "' + regionId + '": ' + rows[0].name);
		} else {
			console.log('No region found for "' + regionId + '"');
		}
	});
}

for (regionId in unicode.supplemental.territoryContainment) {
	if (regionId.replace(/[^0-9.]/g, '') === regionId) {
		handleRegionId(regionId);
	}
}
