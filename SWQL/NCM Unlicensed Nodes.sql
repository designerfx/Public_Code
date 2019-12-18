SELECT CN.OrionNode.Vendor
, CN.OrionNode.Caption --node name from OrionNode table
--commented  , CN.OrionNode.CustomProperties.Region
--remove the "--commented" part to filter by a custom property named Region and/or define your own 
FROM Cirrus.NCMNodeLicenseStatus CN --create a name to identify this table (CN)
WHERE LicensedByNCM = 'No'  AND 
(CN.OrionNode.Vendor LIKE 'Cisco' 
Or CN.OrionNode.Vendor LIKE 'Palo%' 
OR CN.OrionNode.Vendor LIKE 'Brocade%' 
OR CN.OrionNode.Vendor LIKE 'Riverbed%' 
OR CN.OrionNode.Vendor LIKE 'Citrix%')
