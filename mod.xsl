<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.ctrip-hotel-nav">
        <!-- className 'J_OXMod' required  -->
        <xsl:param name="title">特价酒店</xsl:param>
        <xsl:param name="more_title">更多特价</xsl:param>
        <xsl:param name="more_link"></xsl:param>
        <div class="J_OXMod oxmod-ctrip-hotel-nav" ox-mod="ctrip-hotel-nav">
            <h3>
                <a href="{$more_link}" class="bt-more"><xsl:value-of select="$more_title"/> &gt;</a>
                <xsl:value-of select="$title"/>
            </h3>
            <xsl:variable name="hotel" select="data/product-list/i[1]"/>
            <xsl:variable name="menus" select="data/table-menu/i"/>
            <div class="menu">
	            <table width="100%">
	            	<tbody>
	            		<tr>
	            			<td rowspan="2" class="td0">
	            				<a href="{$hotel/href}" class="item">
				            		<img class="product-pic" src="https://a.oxm1.cc/img/blank.png"
				            			style="background-image:url({$hotel/img})"
				            			/>
				            			<br/>
				        			<span class="product-info">
					            		<nobr>
					            			<xsl:value-of select="$hotel/title"/>
					            		</nobr>
					            		<br/>
					            		<em class="tags">
					            			<xsl:copy-of select="$hotel/tags/i"/>
					            		</em>
					            		<br/>
					            		<span class="price">
					            			<em>
					            				<xsl:value-of select="$hotel/price"/>
					            			</em>
					            			&#160;&#160;
					            			<del>
					            				<xsl:value-of select="$hotel/orig_price"/>
					            			</del>
					            		</span>
				            		</span>
				            	</a>
	            			</td>
	            			<td colspan="2" class="td1">
	            				<a href="$menus[1]/href" class="item">
			            			<span class="info">
				            			<b><xsl:value-of select="$menus[1]/title"/></b>
				            			<br/>
				            			<em class="tag">
				            				<xsl:value-of select="$menus[1]/tag"/>
				            			</em>
			            			</span>
			            			<img class="icon" src="{$menus[1]/icon}"/>
			            		</a>
	            			</td>
	            		</tr>
	            		<tr>
	            			<td>
	            				<a href="$menus[2]/href" class="item">
			            			<span class="info">
				            			<b><xsl:value-of select="$menus[2]/title"/></b>
				            			<br/>
				            			<em class="tag">
				            				<xsl:value-of select="$menus[2]/tag"/>
				            			</em>
			            			</span>
			            			<br/>
			            			<img class="icon" src="{$menus[2]/icon}"/>
			            		</a>
	            			</td>
	            			<td>
	            				<a href="$menus[3]/href" class="item">
			            			<span class="info">
				            			<b><xsl:value-of select="$menus[3]/title"/></b>
				            			<br/>
				            			<em class="tag">
				            				<xsl:value-of select="$menus[3]/tag"/>
				            			</em>
			            			</span>
			            			<br/>
			            			<img class="icon" src="{$menus[3]/icon}"/>
			            		</a>
	            			</td>
	            		</tr>
	            	</tbody>
	            </table>
            </div>
           
        </div>
    </xsl:template>
</xsl:stylesheet>
