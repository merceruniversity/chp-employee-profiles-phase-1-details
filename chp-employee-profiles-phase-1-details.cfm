<cfif 'read' eq request.renderstate.rendermode>

    <cfscript>
        isInPhysicalTherapySubsite = false;
        isInPhysicanAssistantStudiesSubsite = false;
        isInPublicHealthSubsite = false;
        isInClinicalMedicalPsychologySubsite = false;

        physicalTherapySubsiteSubstring = '/academics-departments/physical-therapy/';
        physicianAssistantStudiesSubsiteSubstring = '/academics-departments/physician-assistant-studies/';
        publicHealthSubsiteSubstring = '/academics-departments/public-health/';
        clinicalMedicalPsychlogySubstring = '/academics-departments/clinical-medical-psychology/';

        if (0 lt FindNoCase(physicalTherapySubsiteSubstring, cgi.script_name)) {
            isInPhysicalTherapySubsite = true;
        } else if (0 lt FindNoCase(physicianAssistantStudiesSubsiteSubstring, cgi.script_name)) {
            isInPhysicanAssistantStudiesSubsite = true;
        } else if (0 lt FindNoCase(publicHealthSubsiteSubstring, cgi.script_name)) {
            isInPublicHealthSubsite = true;
        } else if (0 lt FindNoCase(clinicalMedicalPsychlogySubstring, cgi.script_name)) {
            isInClinicalMedicalPsychologySubsite =  true;
        }
    </cfscript>

    <cfsavecontent variable="assetIncludes">
        <cfoutput>
            <link href="/www/_cs_resources/chp-employee-profiles-phase-1-details/assets/stylesheets/chp-employee-profiles-phase-1-details.css" rel="stylesheet" />
            <script src="/www/_cs_resources/chp-employee-profiles-phase-1-details/assets/javascripts/chp-employee-profiles-phase-1-details.js"></script>
        </cfoutput>
    </cfsavecontent>

    <cfoutput>
        #application.adf.scriptsService.renderScriptOnce('CHPEmployeeProfilesPhase1Details', assetIncludes)#
    </cfoutput>

    <div class="CHPEmployeeProfilesPhase1Details">

        <div class="CHPEmployeeProfilesPhase1Details-buttons">

            <a class="CHPEmployeeProfilesPhase1Details-button CHPEmployeeProfilesPhase1Details-button--back" href="/www/mu-chp/faculty-staff/index.cfm">
                <span class="CHPEmployeeProfilesPhase1Details-buttonIconOutside">
                    <svg class="CHPEmployeeProfilesPhase1Details-buttonIcon CHPEmployeeProfilesPhase1Details-buttonIcon--back" xmlns="http://www.w3.org/2000/svg" height="53.791" viewBox="0 0 64 53.790592" width="64">
                        <path d="M63.73 52.09c.1-.673 2.22-16.82-7.277-27.932-5.834-6.828-14.835-10.565-26.46-10.935l-.06-11.226c0-.772-.446-1.474-1.142-1.806-.697-.325-1.523-.23-2.12.257L.735 21.73c-.464.38-.734.948-.736 1.548-.002.6.266 1.168.73 1.548L26.665 46.31c.596.495 1.43.597 2.122.265.702-.33 1.145-1.036 1.145-1.808l.062-11.477c28.017-.02 30.01 17.93 30.077 18.673.087 1.008.725 1.794 1.737 1.826h.068c.99 0 1.708-.72 1.856-1.7zM26.524 29.84c-.376.376-.588.884-.588 1.416v9.275L5.158 23.29 25.935 6.207v8.986c0 1.105.894 2 2 2 11.38 0 20.073 3.295 25.468 9.55 4.058 4.71 5.924 10.47 6.562 15.252-4.368-5.968-12.015-12.725-32.028-12.737h-.004c-.528 0-1.036.21-1.41.584z"/>
                    </svg>
                </span>
                <span class="CHPEmployeeProfilesPhase1Details-buttonText CHPEmployeeProfilesPhase1Details-buttonText--back">
                    College of Health Professions Directory
                </span>
            </a>

            <cfif isInPhysicalTherapySubsite>
                <a class="CHPEmployeeProfilesPhase1Details-button CHPEmployeeProfilesPhase1Details-button--back" href="/www/mu-chp/academics-departments/physical-therapy/faculty-staff/index.cfm">
                    <span class="CHPEmployeeProfilesPhase1Details-buttonIconOutside">
                        <svg class="CHPEmployeeProfilesPhase1Details-buttonIcon CHPEmployeeProfilesPhase1Details-buttonIcon--back" xmlns="http://www.w3.org/2000/svg" height="53.791" viewBox="0 0 64 53.790592" width="64">
                            <path d="M63.73 52.09c.1-.673 2.22-16.82-7.277-27.932-5.834-6.828-14.835-10.565-26.46-10.935l-.06-11.226c0-.772-.446-1.474-1.142-1.806-.697-.325-1.523-.23-2.12.257L.735 21.73c-.464.38-.734.948-.736 1.548-.002.6.266 1.168.73 1.548L26.665 46.31c.596.495 1.43.597 2.122.265.702-.33 1.145-1.036 1.145-1.808l.062-11.477c28.017-.02 30.01 17.93 30.077 18.673.087 1.008.725 1.794 1.737 1.826h.068c.99 0 1.708-.72 1.856-1.7zM26.524 29.84c-.376.376-.588.884-.588 1.416v9.275L5.158 23.29 25.935 6.207v8.986c0 1.105.894 2 2 2 11.38 0 20.073 3.295 25.468 9.55 4.058 4.71 5.924 10.47 6.562 15.252-4.368-5.968-12.015-12.725-32.028-12.737h-.004c-.528 0-1.036.21-1.41.584z"/>
                        </svg>
                    </span>
                    <span class="CHPEmployeeProfilesPhase1Details-buttonText CHPEmployeeProfilesPhase1Details-buttonText--back">
                        Physical Therapy Directory
                    </span>
                </a>
            </cfif>

            <cfif isInPhysicanAssistantStudiesSubsite>
                <a class="CHPEmployeeProfilesPhase1Details-button CHPEmployeeProfilesPhase1Details-button--back" href="/www/mu-chp/academics-departments/physician-assistant-studies/faculty-staff/index.cfm">
                    <span class="CHPEmployeeProfilesPhase1Details-buttonIconOutside">
                        <svg class="CHPEmployeeProfilesPhase1Details-buttonIcon CHPEmployeeProfilesPhase1Details-buttonIcon--back" xmlns="http://www.w3.org/2000/svg" height="53.791" viewBox="0 0 64 53.790592" width="64">
                            <path d="M63.73 52.09c.1-.673 2.22-16.82-7.277-27.932-5.834-6.828-14.835-10.565-26.46-10.935l-.06-11.226c0-.772-.446-1.474-1.142-1.806-.697-.325-1.523-.23-2.12.257L.735 21.73c-.464.38-.734.948-.736 1.548-.002.6.266 1.168.73 1.548L26.665 46.31c.596.495 1.43.597 2.122.265.702-.33 1.145-1.036 1.145-1.808l.062-11.477c28.017-.02 30.01 17.93 30.077 18.673.087 1.008.725 1.794 1.737 1.826h.068c.99 0 1.708-.72 1.856-1.7zM26.524 29.84c-.376.376-.588.884-.588 1.416v9.275L5.158 23.29 25.935 6.207v8.986c0 1.105.894 2 2 2 11.38 0 20.073 3.295 25.468 9.55 4.058 4.71 5.924 10.47 6.562 15.252-4.368-5.968-12.015-12.725-32.028-12.737h-.004c-.528 0-1.036.21-1.41.584z"/>
                        </svg>
                    </span>
                    <span class="CHPEmployeeProfilesPhase1Details-buttonText CHPEmployeeProfilesPhase1Details-buttonText--back">
                        Physician Assistant Studies Directory
                    </span>
                </a>
            </cfif>

            <cfif isInPublicHealthSubsite>
                <a class="CHPEmployeeProfilesPhase1Details-button CHPEmployeeProfilesPhase1Details-button--back" href="/www/mu-chp/academics-departments/public-health/faculty-staff/index.cfm">
                    <span class="CHPEmployeeProfilesPhase1Details-buttonIconOutside">
                        <svg class="CHPEmployeeProfilesPhase1Details-buttonIcon CHPEmployeeProfilesPhase1Details-buttonIcon--back" xmlns="http://www.w3.org/2000/svg" height="53.791" viewBox="0 0 64 53.790592" width="64">
                            <path d="M63.73 52.09c.1-.673 2.22-16.82-7.277-27.932-5.834-6.828-14.835-10.565-26.46-10.935l-.06-11.226c0-.772-.446-1.474-1.142-1.806-.697-.325-1.523-.23-2.12.257L.735 21.73c-.464.38-.734.948-.736 1.548-.002.6.266 1.168.73 1.548L26.665 46.31c.596.495 1.43.597 2.122.265.702-.33 1.145-1.036 1.145-1.808l.062-11.477c28.017-.02 30.01 17.93 30.077 18.673.087 1.008.725 1.794 1.737 1.826h.068c.99 0 1.708-.72 1.856-1.7zM26.524 29.84c-.376.376-.588.884-.588 1.416v9.275L5.158 23.29 25.935 6.207v8.986c0 1.105.894 2 2 2 11.38 0 20.073 3.295 25.468 9.55 4.058 4.71 5.924 10.47 6.562 15.252-4.368-5.968-12.015-12.725-32.028-12.737h-.004c-.528 0-1.036.21-1.41.584z"/>
                        </svg>
                    </span>
                    <span class="CHPEmployeeProfilesPhase1Details-buttonText CHPEmployeeProfilesPhase1Details-buttonText--back">
                        Public Health Directory
                    </span>
                </a>
            </cfif>

            <cfif isInClinicalMedicalPsychologySubsite>
                <a class="CHPEmployeeProfilesPhase1Details-button CHPEmployeeProfilesPhase1Details-button--back" href="/www/mu-chp/academics-departments/clinical-medical-psychology/faculty-staff/index.cfm">
                    <span class="CHPEmployeeProfilesPhase1Details-buttonIconOutside">
                        <svg class="CHPEmployeeProfilesPhase1Details-buttonIcon CHPEmployeeProfilesPhase1Details-buttonIcon--back" xmlns="http://www.w3.org/2000/svg" height="53.791" viewBox="0 0 64 53.790592" width="64">
                            <path d="M63.73 52.09c.1-.673 2.22-16.82-7.277-27.932-5.834-6.828-14.835-10.565-26.46-10.935l-.06-11.226c0-.772-.446-1.474-1.142-1.806-.697-.325-1.523-.23-2.12.257L.735 21.73c-.464.38-.734.948-.736 1.548-.002.6.266 1.168.73 1.548L26.665 46.31c.596.495 1.43.597 2.122.265.702-.33 1.145-1.036 1.145-1.808l.062-11.477c28.017-.02 30.01 17.93 30.077 18.673.087 1.008.725 1.794 1.737 1.826h.068c.99 0 1.708-.72 1.856-1.7zM26.524 29.84c-.376.376-.588.884-.588 1.416v9.275L5.158 23.29 25.935 6.207v8.986c0 1.105.894 2 2 2 11.38 0 20.073 3.295 25.468 9.55 4.058 4.71 5.924 10.47 6.562 15.252-4.368-5.968-12.015-12.725-32.028-12.737h-.004c-.528 0-1.036.21-1.41.584z"/>
                        </svg>
                    </span>
                    <span class="CHPEmployeeProfilesPhase1Details-buttonText CHPEmployeeProfilesPhase1Details-buttonText--back">
                        Clinical Medical Psychology Directory
                    </span>
                </a>
            </cfif>

        </div>  <!-- .CHPEmployeeProfilesPhase1Details-buttons -->

        <div class="CHPEmployeeProfilesPhase1Details-basicInformation">
            <div class="CHPEmployeeProfilesPhase1Details-basicInformationImage">
                <div class="CHPEmployeeProfilesPhase1Details-headshotWrapper">
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-headshot"
                        ElementType="image-nohdr">
                </div>
            </div>
            <div class="CHPEmployeeProfilesPhase1Details-basicInformationText">
                <div class="CHPEmployeeProfilesPhase1Details-apellation">
                    <h1 class="CHPEmployeeProfilesPhase1Details-nameWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-name"
                            ElementType="tb-simple-nohdr">
                    </h1>
                    <div class="CHPEmployeeProfilesPhase1Details-postnominalLettersWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-postnominalLetters"
                            ElementType="tb-simple-nohdr">
                    </div>
                    <h2 class="CHPEmployeeProfilesPhase1Details-titleWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-title"
                            ElementType="tb-simple-nohdr">
                    </h2>
                </div>  <!-- .CHPEmployeeProfilesPhase1Details-apellation -->
                <div class="CHPEmployeeProfilesPhase1Details-contactInformation">
                    <div class="CHPEmployeeProfilesPhase1Details-emailAddressWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-emailAddress"
                            ElementType="textblock-nohdr">
                    </div>
                    <div class="CHPEmployeeProfilesPhase1Details-phoneNumberWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-phoneNumber"
                            ElementType="tb-simple-nohdr">
                    </div>
                    <div class="CHPEmployeeProfilesPhase1Details-faxNumberWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-faxNumber"
                            ElementType="tb-simple-nohdr">
                    </div>
                    <div class="CHPEmployeeProfilesPhase1Details-addressWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-addressWrapper"
                            ElementType="textblock-nohdr">
                    </div>
                </div>  <!-- .CHPEmployeeProfilesPhase1Details-contactInformation -->
            </div>
        </div>  <!-- .CHPEmployeeProfilesPhase1Details-basicInformation -->
        <div class="CHPEmployeeProfilesPhase1Details-complexInformation">
            <div class="CHPEmployeeProfilesPhase1Details-section CHPEmployeeProfilesPhase1Details-section--description">
                <!--- <h2 class="CHPEmployeeProfilesPhase1Details-sectionHeading">Description</h2> --->
                <div class="CHPEmployeeProfilesPhase1Details-sectionContent">
                    <div class="CHPEmployeeProfilesPhase1Details-descriptionWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-description"
                            ElementType="textblock-nohdr">
                    </div>
                </div>
            </div>
            <div class="CHPEmployeeProfilesPhase1Details-section CHPEmployeeProfilesPhase1Details-section--education">
                <h2 class="CHPEmployeeProfilesPhase1Details-sectionHeading">Education</h2>
                <div class="CHPEmployeeProfilesPhase1Details-sectionContent">
                    <div class="CHPEmployeeProfilesPhase1Details-educationWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-education"
                            ElementType="textblock-nohdr">
                    </div>
                </div>
            </div>
            <div class="CHPEmployeeProfilesPhase1Details-section CHPEmployeeProfilesPhase1Details-section--clinicalExpertise">
                <h2 class="CHPEmployeeProfilesPhase1Details-sectionHeading">Clinical Expertise</h2>
                <div class="CHPEmployeeProfilesPhase1Details-sectionContent">
                    <div class="CHPEmployeeProfilesPhase1Details-clinicalExpertiseWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-clinicalExpertise"
                            ElementType="textblock-nohdr">
                    </div>
                </div>
            </div>
            <div class="CHPEmployeeProfilesPhase1Details-section CHPEmployeeProfilesPhase1Details-section--teachingResponsibilities">
                <h2 class="CHPEmployeeProfilesPhase1Details-sectionHeading">Teaching Responsibilities</h2>
                <div class="CHPEmployeeProfilesPhase1Details-sectionContent">
                    <div class="CHPEmployeeProfilesPhase1Details-teachingResponsibilitiesWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-teachingResponsibilities"
                            ElementType="textblock-nohdr">
                    </div>
                </div>
            </div>
            <div class="CHPEmployeeProfilesPhase1Details-section CHPEmployeeProfilesPhase1Details-section--professionalActivitiesOrMemberships">
                <h2 class="CHPEmployeeProfilesPhase1Details-sectionHeading">Professional Activities/Memberships</h2>
                <div class="CHPEmployeeProfilesPhase1Details-sectionContent">
                    <div class="CHPEmployeeProfilesPhase1Details-professionalActivitiesOrMembershipsWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-professionalActivitiesOrMemberships"
                            ElementType="textblock-nohdr">
                    </div>
                </div>
            </div>
            <div class="CHPEmployeeProfilesPhase1Details-section CHPEmployeeProfilesPhase1Details-section--certifications">
                <h2 class="CHPEmployeeProfilesPhase1Details-sectionHeading">Certifications</h2>
                <div class="CHPEmployeeProfilesPhase1Details-sectionContent">
                    <div class="CHPEmployeeProfilesPhase1Details-certificationsWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-certifications"
                            ElementType="textblock-nohdr">
                    </div>
                </div>
            </div>
            <div class="CHPEmployeeProfilesPhase1Details-section CHPEmployeeProfilesPhase1Details-section--scholarlyActivity">
                <h2 class="CHPEmployeeProfilesPhase1Details-sectionHeading">Scholarly Activity</h2>
                <div class="CHPEmployeeProfilesPhase1Details-sectionContent">
                    <div class="CHPEmployeeProfilesPhase1Details-scholarlyActivityWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-scholarlyActivity"
                            ElementType="textblock-nohdr">
                    </div>
                </div>
            </div>
            <div class="CHPEmployeeProfilesPhase1Details-section CHPEmployeeProfilesPhase1Details-section--publications">
                <h2 class="CHPEmployeeProfilesPhase1Details-sectionHeading">Publications</h2>
                <div class="CHPEmployeeProfilesPhase1Details-sectionContent">
                    <div class="CHPEmployeeProfilesPhase1Details-publicationsWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-publications"
                            ElementType="textblock-nohdr">
                    </div>
                </div>
            </div>
            <div class="CHPEmployeeProfilesPhase1Details-section CHPEmployeeProfilesPhase1Details-section--presentationsOrPosters">
                <h2 class="CHPEmployeeProfilesPhase1Details-sectionHeading">Presentations/Posters</h2>
                <div class="CHPEmployeeProfilesPhase1Details-sectionContent">
                    <div class="CHPEmployeeProfilesPhase1Details-presentationsOrPostersWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-presentationsOrPosters"
                            ElementType="textblock-nohdr">
                    </div>
                </div>
            </div>
            <div class="CHPEmployeeProfilesPhase1Details-section CHPEmployeeProfilesPhase1Details-section--awardsOrRecognitions">
                <h2 class="CHPEmployeeProfilesPhase1Details-sectionHeading">Awards/Recognition</h2>
                <div class="CHPEmployeeProfilesPhase1Details-sectionContent">
                    <div class="CHPEmployeeProfilesPhase1Details-awardsOrRecognitionsWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-awardsOrRecognitions"
                            ElementType="textblock-nohdr">
                    </div>
                </div>
            </div>
            <div class="CHPEmployeeProfilesPhase1Details-section CHPEmployeeProfilesPhase1Details-section--activeGrantsOrContacts">
                <h2 class="CHPEmployeeProfilesPhase1Details-sectionHeading">Active Grants/Contracts</h2>
                <div class="CHPEmployeeProfilesPhase1Details-sectionContent">
                    <div class="CHPEmployeeProfilesPhase1Details-activeGrantsOrContactsWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-activeGrantsOrContacts"
                            ElementType="textblock-nohdr">
                    </div>
                </div>
            </div>
            <div class="CHPEmployeeProfilesPhase1Details-section CHPEmployeeProfilesPhase1Details-section--researchInterests">
                <h2 class="CHPEmployeeProfilesPhase1Details-sectionHeading">Research Interests</h2>
                <div class="CHPEmployeeProfilesPhase1Details-sectionContent">
                    <div class="CHPEmployeeProfilesPhase1Details-researchInterestsWrapper">
                        <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                            ElementName="CHPEmployeeProfilesPhase1Details-researchInterests"
                            ElementType="textblock-nohdr">
                    </div>
                </div>
            </div>
        </div>  <!-- .CHPEmployeeProfilesPhase1Details-complexInformation -->
    </div>  <!-- .CHPEmployeeProfilesPhase1Details -->

<cfelse>

    <style>
        .ElementInput {
            border-collapse: collapse;
            border-left: 1px solid #000;
            border-top: 1px solid #000;
            width: 100%;
        }

        .ElementInput thead {
            background-color: #eee;
        }

        .ElementInput thead tr:first-of-type th {
            padding-top: 20px;
        }

        .ElementInput td,
        .ElementInput th {
            border-bottom: 1px solid #000;
            border-right: 1px solid #000;
            padding: 0.2rem 0.5rem;
        }
    </style>

    <table class="ElementInput">
        <thead>
            <tr>
                <th>
                    Element Name
                </th>
                <th>
                    Value
                </th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>
                    Headshot
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-headshot"
                        ElementType="image-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Name
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-name"
                        ElementType="tb-simple-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Post-Nominal Letters
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-postnominalLetters"
                        ElementType="tb-simple-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Title
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-title"
                        ElementType="tb-simple-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Email Address
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-emailAddress"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Phone Number
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-phoneNumber"
                        ElementType="tb-simple-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Fax Number
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-faxNumber"
                        ElementType="tb-simple-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Address
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-address"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Description
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-description"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Education
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-education"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Clinical Expertise
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-clinicalExpertise"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Teaching Responsibilities
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-teachingResponsibilities"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Professional Activities/Memberships
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-professionalActivitiesOrMemberships"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Certifications
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-certifications"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Scholarly Activity
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-scholarlyActivity"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Publications
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-publications"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Presentations/Posters
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-presentationsOrPosters"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Awards/Recognitions
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-awardsOrRecognitions"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Active Grants/Contacts
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-activeGrantsOrContacts"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
            <tr>
                <td>
                    Research Interests
                </td>
                <td>
                    <cfmodule template="/commonspot/utilities/ct-render-named-element.cfm"
                        ElementName="CHPEmployeeProfilesPhase1Details-researchInterests"
                        ElementType="textblock-nohdr">
                </td>
            </tr>
        </tbody>
    </table>

</cfif>
