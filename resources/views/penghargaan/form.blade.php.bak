@if (isset($penghargaan))
    {!! Form::hidden('kode_penghargaan', $penghargaan->kode_penghargaan) !!}
@endif

{{--kategori--}}
@if($errors->any())
    <div class="form-group {{ $errors->has('kategori')? 'has-error' : 'has-success' }}">
@else
    <div class="form-group">
@endif
            {!! Form::label('kategori', 'Kategori', ['class' => 'control-label']) !!}
            {!!Form::select('kategori', ['I' => 'I', 'II' => 'II', 'III' => 'III'], null, ['class'=>'form-control', 'placeholder' => 'Pilih Kategori...'])!!}
            @if ($errors->has('kategori'))
                    <span class="help-block">
                        {{ $errors->first('kategori') }}
                    </span>
                @endif
        </div>

{{--kode_penghargaan--}}
@if($errors->any())
    <div class="form-group {{ $errors->has('kode_penghargaan')? 'has-error' : 'has-success' }}">
@else
    <div class="form-group">
@endif
        {!! Form::label('kode_penghargaan', 'Kode', ['class' => 'control-label']) !!}
        {!! Form::text('kode_penghargaan', null, ['class' => 'form-control']) !!}
        @if ($errors->has('kode_penghargaan'))
            <span class="help-block">
                {{ $errors->first('kode_penghargaan') }}
            </span>
        @endif
    </div>

{{--jenis_penghargaan--}}
@if($errors->any())
    <div class="form-group {{ $errors->has('jenis_penghargaan')? 'has-error' : 'has-success' }}">
@else
    <div class="form-group">
@endif
            {!! Form::label('jenis_penghargaan', 'Jenis Penghargaan', ['class' => 'control-label']) !!}
            {!! Form::text('jenis_penghargaan', null, ['class' => 'form-control']) !!}
            @if ($errors->has('jenis_penghargaan'))
                    <span class="help-block">
                        {{ $errors->first('jenis_penghargaan') }}
                    </span>
                @endif
        </div>
{{--poin--}}
@if($errors->any())
    <div class="form-group {{ $errors->has('poin')? 'has-error' : 'has-success' }}">
@else
    <div class="form-group">
@endif
            {!! Form::label('poin', 'Poin', ['class' => 'control-label']) !!}
            {!! Form::text('poin', null, ['class' => 'form-control']) !!}
            @if ($errors->has('poin'))
                    <span class="help-block">
                        {{ $errors->first('poin') }}
                    </span>
                @endif
        </div>
			 <div class="form-group">
            {!! Form::submit($submitButtonText, ['class' => 'btn btn-primary form-control']) !!}
        </div> 