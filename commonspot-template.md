template-basepage.cfm
=====================

This is an example of a very simple base template. By modifying this template directly you can provide your own look and feel and basic page structure for your site. This is the base template from which CommonSpot's pre-defined Base Plus One template is built, so changes here will be appropriately reflected in those templates.

**Important:** This base template provides a single container element named 'BaseTemplateContainer'. Element names **must** be unique for a given template, and should be changed if the element type changes. Element names can be shared with other templates, but **only** if elements with the same name are the same element type.

Building Out Your Site
----------------------

In building your own look and feel, you can programatically add any CommonSpot elements desired to this template. A listing of elements and the names by which you invoke them is provided below for reference. Then, at the next layer in the template hierarchy above this, define the elements you added.

For example, if your site's design called for two sets of links and a bread crumb element, you could place those three elements on this template, then configure them on soft templates derived from this base template.

Alternatively, you could leave the default container element as the only one on the base template, and add any other desired elements to your Base Plus One, or other soft templates based in it.

Inserting CommonSpot Elements
-----------------------------

To use CommonSpot content, include CommonSpot elements at the appropriate places in the base template. The ColdFusion code for including a CommonSpot element is:

```
<CFMODULE TEMPLATE="/commonspot/utilities/ct-render-named-element.cfm"
    ElementType="elementType" ElementName="elementName">
```

The parameters are as follows:

-	**ElementName:** Unique name for the element. This should be short and should not contain spaces or special characters. An element name may not be used more than once in a base template.
-	**ElementType:** Type of CommonSpot element to include (see table below)

Other attributes can be passed to the `ct-render-named-element` tag. Please consult the CommonSpot Developer's Guide for more information.

A list of CommonSpot elements that can be inserted is provided below. The most up-to-date list can be found by looking in the `AvailableControls` table.

-	**Name:** Use this for the `ElementType` parameter
-	**Title:** For your reference only, not needed in code
-	**Description:** For your reference only, not needed in code

### Form & Data Sheet Elements

| Name        | Title       | Description                                     |
|:------------|:------------|:------------------------------------------------|
| `datasheet` | Data Sheet  | Renders data from any source in a table format. |
| `form`      | Simple Form | Renders a simple HTML form.                     |

### Image Elements

| Name              | Title                         | Description                                                      |
|:------------------|:------------------------------|:-----------------------------------------------------------------|
| `image`           | Single Image                  | Renders a single image and associated caption text.              |
| `image-nohdr`     | Single Image (without header) | Renders a single image without a header.                         |
| `imagegrid`       | Image Grid                    | Renders a vertical or horizontal series of images.               |
| `textaroundimage` | Text Around an Image          | Renders text flowed around a specified image.                    |
| `imageindex`      | Image Index                   | Renders an index of images based on specified filter parameters. |

### Layout Elements

| Name           | Title          | Description                                                              |
|:---------------|:---------------|:-------------------------------------------------------------------------|
| `container`    | Container      | Renders a rectangular area or grid that may contain other elements.      |
| `layout`       | Tabular Layout | Renders a rectangular table with a specified number of rows and columns. |
| `multisection` | Multi-section  | Renders a single or multiple repeating sections.                         |

### Link & List Elements

| Name           | Title                   | Description                                                                                              |
|:---------------|:------------------------|:---------------------------------------------------------------------------------------------------------|
| `breadcrumb`   | Breadcrumb Links        | Renders a horizontal list of breadcrumb links displaying the main navigational path to the current page. |
| `bulletedlist` | Bulleted List           | Renders a bulleted list of hyperlinks or text blocks.                                                    |
| `facetnav`     | Facet-based Navigation  | Renders facet-based navigation widget.                                                                   |
| `feedindex`    | Feed Index              | Renders an index of feeds.                                                                               |
| `link`         | Link                    | Renders a simple link.                                                                                   |
| `linkbar`      | Link bar                | Renders a list of text based links.                                                                      |
| `linklist`     | Drop Down List of Links | Displays either a drop down list of links or an expanded list of links.                                  |
| `pageindex`    | Page Index              | Renders an index of pages based on specified filter parameters.                                          |
| `tabbar`       | Tab Bar                 | Renders a horizontal row of tabs.                                                                        |

### Miscellaneous Elements

| Name         | Title                | Description                                                                         |
|:-------------|:---------------------|:------------------------------------------------------------------------------------|
| `customcf`   | Custom Script        | Renders the output of a custom script module.                                       |
| `date`       | Date/Time            | Renders a selected date/time.                                                       |
| `schedule`   | Schedule/Personalize | Renders different elements based on date/time, audience, subsite, or page category. |
| `tree`       | Tree Navigation      | Renders a hierarchical structure for navigation or other purposes.                  |
| `webprocess` | Web Process          | Renders the output of a Web process or page.                                        |

### Multimedia Elements

| Name         | Title      | Description                |
|:-------------|:-----------|:---------------------------|
| `multimedia` | Multimedia | Renders a multimedia clip. |

### Page Set Elements

| Name      | Title                     | Description                                   |
|:----------|:--------------------------|:----------------------------------------------|
| `psindex` | Page Set Index            | Renders an index of page sets.                |
| `psnav`   | Page Set Navigation Links | Renders navigational links for a page set.    |
| `pstoc`   | Page Set Contents         | Renders the Table of Contents for a page set. |

### Search Elements

| Name             | Title            | Description                                        |
|:-----------------|:-----------------|:---------------------------------------------------|
| `querybyexample` | Query-by-example | Renders a query-by-example HTML form.              |
| `searchform`     | Search Form      | Renders the specified components of a search form. |
| `searchresults`  | Search Results   | Renders the results of a full text search.         |

### Text Elements

| Name              | Title                                 | Description                                                                                                             |
|:------------------|:--------------------------------------|:------------------------------------------------------------------------------------------------------------------------|
| `bl-tb`           | Bulleted List of Textblocks           | Renders a single column of bulleted text blocks.                                                                        |
| `heading`         | Heading                               | Renders an HTML heading or stylized label, which is typically used to denote a new section within the page.             |
| `tb-simple`       | Simple Text Block                     | Renders a simple text block.                                                                                            |
| `tb-simple-nohdr` | Simple Text Block (without header)    | Renders a simple text block without a header.                                                                           |
| `textblock`       | Formatted Text Block                  | Renders a text block with rich formatting options, including font, color, alignment, and hyperlinking.                  |
| `textblock-nohdr` | Formatted Text Block (without header) | Renders a text block without a header with rich formatting options, including font, color, alignment, and hyperlinking. |

### Word, HTML & Other Format Elements

| Name          | Title                             | Description                                                                |
|:--------------|:----------------------------------|:---------------------------------------------------------------------------|
| `html`        | HTML                              | Renders an uploaded HTML document within a textblock.                      |
| `pdf`         | PDF                               | Renders an embedded Adobe PDF document.                                    |
| `powerpoint`  | Microsoft PowerPoint Presentation | Renders preview slides from an uploaded Microsoft PowerPoint presentation. |
| `wordconvert` | Microsoft Word                    | Renders an uploaded Microsoft Word document as HTML.                       |

**Important** Notes and Reminders
---------------------------------

CommonSpot sets ColdFusion's `enablecfoutputonly` property to `yes`, so `<cfoutput>` tags must be used around any content to be displayed.

CommonSpot uses a structure named `Request.PAGE` for internal use. Modification of this structure will disrupt CommonSpot and cause undesirable results.

The following ColdFusion tags should not be used in base templates, render handlers or custom scripts:

-	`cfabort`
-	`cflocation`
-	`cfflush`
-	`cfhtmlhead`
-	`cfcontent`

Remember that `#` is a special character for ColdFusion. In order to display the `#` character, double it (`##`\)

It's unwise to use `<cfinclude>` and `<cfmodule>` between `<cfoutput>` and `</cfoutput>`. It won't cause errors, but you will get extra whitespace in your output, which may affect formatting.

If your application requires that certain content (such as `<style>`) be included in the HEAD section of the generated HTML document (global stylesheets, etc), enclose it in a separate file with the `.head` extension. The base name of this file must be the same as the name of the template (template `template-basepage.cfm`, `<head>` content in `template-basepage.head`\)

*Copyright 1998-2016, PaperThin, Inc. All Rights Reserved.*
