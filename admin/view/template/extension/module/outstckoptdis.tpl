<?php echo $header; ?><?php echo $column_left; ?>

<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-outstckoptdis" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <button type="submit" form="form-outstckoptdis" data-toggle="tooltip" onclick="$('#svsty').val(1);" title="Save & Stay" class="btn btn-primary">Save & Stay</button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a> <?php echo $text_extension_doc;?></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i> <?php echo $text_edit; ?></h3>
      </div>
      <div class="panel-body">
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-outstckoptdis" class="form-horizontal">
          <input type="hidden"  name="svsty" id="svsty" />
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-status"><?php echo $entry_status; ?></label>
            <div class="col-sm-10">
              <select name="outstckoptdis_status" id="input-status" class="form-control">
                <?php if ($outstckoptdis_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-disopt"><?php echo $entry_disopt; ?></label>
            <div class="col-sm-10">
              <label class="radio-inline">
              <input name="outstckoptdis_disopt" type="radio" value="1" <?php if ($outstckoptdis_disopt == 1) { ?>checked<?php } ?>>
              <?php echo $txt_yes; ?></label>
              <label class="radio-inline">
              <input name="outstckoptdis_disopt" type="radio" value="0" <?php if ($outstckoptdis_disopt == 0) { ?>checked<?php } ?>>
              <?php echo $txt_no; ?></label>
            </div>
          </div>
          <div class="form-group">
            <label class="col-sm-2 control-label" for="input-outstcktext"><?php echo $entry_outstcktext; ?></label>
            <div class="col-sm-10">
              <?php foreach ($languages as $language) { ?>
              <div class="input-group pull-left"><span class="input-group-addon"><img src="<?php echo $language['imgsrc']; ?>"/> </span>
                <input type="text" name="outstckoptdis_outstcktext[<?php echo $language['language_id']; ?>]" value="<?php echo $outstckoptdis_outstcktext[$language['language_id']]; ?>" placeholder="<?php echo $entry_outstcktext; ?>" class="form-control" />
              </div>
              <?php } ?>
            </div>
          </div>          
        </form>
      </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>