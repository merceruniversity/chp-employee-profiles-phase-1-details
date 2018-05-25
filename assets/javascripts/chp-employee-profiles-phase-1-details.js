jQuery(function($) {
    'use strict';

    var blockName = 'CHPEmployeeProfilesPhase1Details';
    var elementNames = [
        'headshot'
        ,'name'
        ,'postnominalLetters'
        ,'emailAddress'
        ,'phoneNumber'
        ,'faxNumber'
        ,'address'
        ,'description'
        ,'education'
        ,'clinicalExpertise'
        ,'teachingResponsibilities'
        ,'professionalActivitiesOrMemberships'
        ,'certifications'
        ,'scholarlyActiviity'
        ,'publications'
        ,'presentationsOrPosters'
        ,'awardsOrRecognitions'
        ,'activeGrantsOrContacts'
        ,'researchInterests'
    ];
    var $allInstances = $('.'+blockName);

    $('h1:not(.'+blockName+'-nameWrapper)').remove();

    $allInstances.each(function(i, instance) {
        var $instance = $(instance);
        $.each(elementNames, function(i, elementName) {
            var $elementWrapper = $('.'+blockName+'-'+elementName+'Wrapper');
            if (0 < $elementWrapper.find('img').length
                || 0 < $.trim($elementWrapper.text()).length) {
                // console.info('%s content? YES!', elementName);
                $instance.addClass(blockName+'--has'
                    +capitalizeFirstLetter(elementName));
            } else {
                // console.warn('%s content? NO!', elementName);
            }
        });
    });

    function capitalizeFirstLetter(str) {
        return str.charAt(0).toUpperCase()+str.substr(1);
    }

});
