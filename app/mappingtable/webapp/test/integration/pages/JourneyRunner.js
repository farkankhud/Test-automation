sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"scrum5/mappingtable/test/integration/pages/MappingTableList.gen",
	"scrum5/mappingtable/test/integration/pages/MappingTableObjectPage.gen"
], function (JourneyRunner, MappingTableListGenerated, MappingTableObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('scrum5/mappingtable') + '/test/flp.html#app-preview',
        pages: {
			onTheMappingTableListGenerated: MappingTableListGenerated,
			onTheMappingTableObjectPageGenerated: MappingTableObjectPageGenerated
        },
        async: true
    });

    return runner;
});

