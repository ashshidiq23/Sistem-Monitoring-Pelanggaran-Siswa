@if (isset($pelanggaran))
    {!! Form::hidden('kode_pelanggaran', $pelanggaran->kode_pelanggaran) !!}
@endif

{{--kategori--}}
@if($errors->any())
    <div class="form-group {{ $errors->has('kategori')? 'has-error' : 'has-success' }}">
@else
    <div class="form-group">
@endif
            {!! Form::label('kategori', 'Kategori', ['class' => 'control-label']) !!}
            {!!Form::select('kategori', ['A' => 'A', 'B' => 'B', 'C' => 'C', 'D' => 'D', 'E' => 'E'], null, ['class'=>'form-control', 'placeholder' => 'Pilih Kategori...'])!!}
            @if ($errors->has('kategori'))
                    <span class="help-block">
                        {{ $errors->first('kategori') }}
                    </span>
                @endif
        </div>

{{--kode_pelanggaran--}}
@if($errors->any())
    <div class="form-group {{ $errors->has('kode_pelanggaran')? 'has-error' : 'has-success' }}">
@else
    <div class="form-group">
@endif
        {!! Form::label('kode_pelanggaran', 'Kode', ['class' => 'control-label']) !!}
        {!! Form::text('kode_pelanggaran', null, ['class' => 'form-control']) !!}
        @if ($errors->has('kode_pelanggaran'))
            <span class="help-block">
                {{ $errors->first('kode_pelanggaran') }}
            </span>
        @endif
    </div>

{{--jenis_pelanggaran--}}
@if($errors->any())
    <div class="form-group {{ $errors->has('jenis_pelanggaran')? 'has-error' : 'has-success' }}">
@else
    <div class="form-group">
@endif
            {!! Form::label('jenis_pelanggaran', 'Jenis Pelanggaran', ['class' => 'control-label']) !!}
            {!! Form::text('jenis_pelanggaran', null, ['class' => 'form-control']) !!}
            @if ($errors->has('jenis_pelanggaran'))
                    <span class="help-block">
                        {{ $errors->first('jenis_pelanggaran') }}
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