@extends('layouts.backend.app')

@section('content')
<div class="content-wrapper">
    <div class="content-header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-9 col-sm-8">
                    <div class="showcase-filters">
                        <form action="javascript:void(0)" class="form-group">
                            <div class="form-group mr-2">
                                <span class="text-bold mb-1" >platform</span>
                                <label for="server" class="sr-only">Platform</label>
                                <select class="form-control showcase-filter-input" name="server" id="server">
                                    <option value="">Platform</option>
                                    <option value="5188">Android</option>
                                    <option value="5187">iOS</option>
                                </select>
                            </div>
                            <div class="lot-fields" data-fields='[{"id":"level","type":1,"conditions":[]},{"id":"stage","type":1,"conditions":[]}]'>
                                <div class="form-group mr-2" data-id="level">
                                    <label class="control-label" for="level-min">Level</label>
                                    <div class="lot-field-range-box">
                                        <input type="hidden" class="lot-field-input range-value" name="f-level" value="">
                                        <input type="text" inputmode="decimal" class="form-control lot-field-range range-min" placeholder="Min" id="level-min">
                                        <input type="text" inputmode="decimal" class="form-control lot-field-range range-max" placeholder="Max" id="level-max">
                                    </div>
                                </div>
                                <div class="form-group mr-2" data-id="stage">
                                    <label class="control-label" for="stage-min">Stage</label>
                                    <div class="lot-field-range-box">
                                        <input type="hidden" class="lot-field-input range-value" name="f-stage" value="">
                                        <input type="text" inputmode="decimal" class="form-control lot-field-range range-min" placeholder="Min" id="stage-min">
                                        <input type="text" inputmode="decimal" class="form-control lot-field-range range-max" placeholder="Max" id="stage-max">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group mr-2">
                                <label class="form-control-box switch">
                                    <span>Online sellers only</span>
                                    <span class="checkbox checkbox-switch pull-right">
                                        <input type="checkbox" name="online" class="showcase-filter-input">
                                        <i></i>
                                    </span>
                                </label>
                            </div>
                            <div class="form-group mr-2">
                                <label class="form-control-box switch">
                                    <span><i class="auto-dlv-icon"></i> Automatic delivery</span>
                                    <span class="checkbox checkbox-switch pull-right">
                                        <input type="checkbox" name="auto" class="showcase-filter-input">
                                        <i></i>
                                    </span>
                                </label>
                            </div>
                            <div class="form-group has-feedback">
                                <input type="text" name="desc" class="form-control showcase-filter-input showcase-filter-text" placeholder="Search by description" data-target=".tc-desc-text">
                                {{-- <span class="form-control-feedback text-muted"><i class="fa fa-search"></i></span> --}}
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-md-3 col-sm-4 hidden-xs">
                    <div class="pull-right">
                        <a href="" class="btn btn-default btn-wide">Sell Accounts</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
