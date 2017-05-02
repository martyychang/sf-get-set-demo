<aura:application controller="GetterSetterDemoAuraController">
    <aura:attribute name="longhand" type="LonghandExample"/>
    <aura:attribute name="shorthand" type="ShorthandExample"/>
    
    <aura:handler name="init" value="{!this}" action="{!c.handleInit}"/>
    
    <table>
        <thead>
            <tr>
                <th><!-- corner cell --></th>
                <th>Name</th>
                <th>Funny</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>Longhand</th>
                <td>{!v.longhand.name}</td>
                <td>{!v.longhand.funny}</td>
            </tr>
            <tr>
                <th>Shorthand</th>
                <td>{!v.shorthand.name}</td>
                <td>{!v.shorthand.funny}</td>
            </tr>
        </tbody>
    </table>
</aura:application>