<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Ranchi Smart City Transportation System</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f4f4f4;
                        margin: 0;
                        padding: 20px;
                    }
                    h1, h2 {
                        color: #333;
                        text-align: center;
                    }
                    .container {
                        max-width: 1200px;
                        margin: auto;
                        background: white;
                        padding: 20px;
                        box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
                        border-radius: 8px;
                    }
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin-bottom: 20px;
                        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                        text-align: center;
                    }
                    th, td {
                        padding: 10px;
                        border: 1px solid #ddd;
                    }
                    th {
                        background-color: #4CAF50;
                        color: white;
                    }
                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                    tr:hover {
                        background-color: #e2e2e2;
                    }
                    td {
                        text-align: left;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <h1>Ranchi Smart City Transportation System</h1>
                    
                    <h2>City: <xsl:value-of select="SmartCity/CityName"/></h2>
                    
                    <h2>Vehicles</h2>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Type</th>
                            <th>Owner</th>
                        </tr>
                        <xsl:for-each select="SmartCity/Vehicle">
                            <tr>
                                <td><xsl:value-of select="ID"/></td>
                                <td><xsl:value-of select="Type"/></td>
                                <td><xsl:value-of select="Owner"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    
                    <h2>Drivers</h2>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>License Number</th>
                        </tr>
                        <xsl:for-each select="SmartCity/Driver">
                            <tr>
                                <td><xsl:value-of select="ID"/></td>
                                <td><xsl:value-of select="Name"/></td>
                                <td><xsl:value-of select="LicenseNumber"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    
                    <h2>Traffic Signals</h2>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Location</th>
                            <th>Status</th>
                        </tr>
                        <xsl:for-each select="SmartCity/TrafficSignal">
                            <tr>
                                <td><xsl:value-of select="ID"/></td>
                                <td><xsl:value-of select="Location"/></td>
                                <td><xsl:value-of select="Status"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    
                    <h2>Public Transport</h2>
                    <table>
                        <tr>
                            <th>Type</th>
                            <th>Route Number</th>
                            <th>Capacity</th>
                            <th>Driver ID</th>
                        </tr>
                        <xsl:for-each select="SmartCity/PublicTransport">
                            <tr>
                                <td><xsl:value-of select="Type"/></td>
                                <td><xsl:value-of select="RouteNumber"/></td>
                                <td><xsl:value-of select="Capacity"/></td>
                                <td><xsl:value-of select="DriverID"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    
                    <h2>Accident Reports</h2>
                    <table>
                        <tr>
                            <th>Report ID</th>
                            <th>Date</th>
                            <th>Location</th>
                            <th>Vehicle ID</th>
                        </tr>
                        <xsl:for-each select="SmartCity/AccidentReport">
                            <tr>
                                <td><xsl:value-of select="ReportID"/></td>
                                <td><xsl:value-of select="Date"/></td>
                                <td><xsl:value-of select="Location"/></td>
                                <td><xsl:value-of select="VehicleID"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    
                    <h2>Parking Spots</h2>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Location</th>
                            <th>Capacity</th>
                        </tr>
                        <xsl:for-each select="SmartCity/ParkingSpot">
                            <tr>
                                <td><xsl:value-of select="ID"/></td>
                                <td><xsl:value-of select="Location"/></td>
                                <td><xsl:value-of select="Capacity"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    
                    <h2>Traffic Sensors</h2>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Location</th>
                            <th>Type</th>
                        </tr>
                        <xsl:for-each select="SmartCity/TrafficSensor">
                            <tr>
                                <td><xsl:value-of select="ID"/></td>
                                <td><xsl:value-of select="Location"/></td>
                                <td><xsl:value-of select="Type"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    
                    <h2>Roads</h2>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Length</th>
                        </tr>
                        <xsl:for-each select="SmartCity/Road">
                            <tr>
                                <td><xsl:value-of select="ID"/></td>
                                <td><xsl:value-of select="Name"/></td>
                                <td><xsl:value-of select="Length"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                    
                    <h2>Traffic Violations</h2>
                    <table>
                        <tr>
                            <th>ID</th>
                            <th>Vehicle ID</th>
                            <th>Violation Type</th>
                            <th>Fine Amount</th>
                        </tr>
                        <xsl:for-each select="SmartCity/TrafficViolation">
                            <tr>
                                <td><xsl:value-of select="ID"/></td>
                                <td><xsl:value-of select="VehicleID"/></td>
                                <td><xsl:value-of select="ViolationType"/></td>
                                <td><xsl:value-of select="FineAmount"/></td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
