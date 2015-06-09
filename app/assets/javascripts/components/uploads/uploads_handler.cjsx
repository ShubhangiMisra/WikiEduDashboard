React             = require 'react/addons'
Router            = require 'react-router'
HandlerInterface  = require '../highlevels/handler'
UploadList        = require './upload_list'
AssignmentList    = require '../assignments/assignment_list'
UIActions         = require '../../actions/ui_actions'

UploadsHandler = React.createClass(
  displayName: 'UploadsHandler'
  sortSelect: (e) ->
    UIActions.sort 'uploads', e.target.value
  render: ->
    <div id='uploads'>
      <div className='section-header'>
        <h3>Files Uploaded</h3>
        <div className='sort-select'>
          <select className='sorts' name='sorts' onChange={@sortSelect}>
            <option value='file_name'>File Name</option>
            <option value='uploader'>Uploaded By</option>
            <option value='usage_count'>Usages</option>
          </select>
        </div>
      </div>
      <UploadList {...@props} />
    </div>
)

module.exports = HandlerInterface(UploadsHandler)
