//v.1.5 build 71114

/*
Copyright DHTMLX LTD. http://www.dhtmlx.com
To use this component please contact sales@dhtmlx.com to obtain license
*/
/**
*   @desc: radio editor
*   @returns: dhtmlxGrid cell editor object
*   @type: public
*/
function eXcell_ra_str(cell){
   if (cell){
   this.base = eXcell_ra;
   this.base(cell)
   this.grid = cell.parentNode.grid;
	}
}
eXcell_ra_str.prototype = new eXcell_ch;
eXcell_ra_str.prototype.setValue = function(val){
                  this.cell.style.verticalAlign = "middle";//nb:to center checkbox in line
                  if (val){
                           val=val.toString()._dhx_trim();
                     if ((val=="false")||(val=="0")) val="";
                     }
                  if(val){
		    if (this.grid.rowsAr[this.cell.parentNode.idd])
                     for (var i=0;i<this.grid._cCount;i++) {
			if (i!==this.cell._cellIndex) {
                            var cell = this.grid.cells(this.cell.parentNode.idd,i);
                            if (cell.getValue())
                               cell.setValue("0");
			}
                     }
                     val = "1";
                     this.cell.chstate = "1";
                  }else{
                     val = "0";
                     this.cell.chstate = "0"
                  }
                  this.setCValue("<img src='"+this.grid.imgURL+"radio_chk"+val+".gif' onclick='this.parentNode.obj.changeState()'>",this.cell.chstate);
               }
//(c)dhtmlx ltd. www.dhtmlx.com