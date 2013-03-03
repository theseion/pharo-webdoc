rendering
sitemap
	 | document root |
	document := XMLDocument new
        version: '1.0';
        encoding: 'UTF-8';
        yourself.
    root := (XMLElement named: 'urlset').
    root attributeAt: 'xmlns' put: 'http://www.sitemaps.org/schemas/sitemap/0.9'.
    root attributeAt: 'xmlns:xsi' put: 'http://www.w3.org/2001/XMLSchema-instance'.
    root 
		attributeAt: 'xsi:schemaLocation' 
		put: 'http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd'.
    document addElement: root.
 
   SWPackageOrganizer default allPackageNames do: [ :aString |
		self addPackageUrl:aString to: root.
	 ].
	^ document.