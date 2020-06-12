class PeriodicosController < ApplicationController
  before_action :set_periodico, only: [:show, :edit, :update, :destroy]

  # GET /periodicos
  # GET /periodicos.json
  def index
    @q = Periodico.ransack(params[:q])
    @periodicos = @q.result(distinct: true)
  end

  # GET /periodicos/1
  # GET /periodicos/1.json
  def show
  end

  # GET /periodicos/new
  def new
    @periodico = Periodico.new
  end

  # GET /periodicos/1/edit
  def edit
  end

  # POST /periodicos
  # POST /periodicos.json
  def create
    @periodico = Periodico.new(periodico_params)

    respond_to do |format|
      if @periodico.save
        format.html { redirect_to @periodico, notice: 'Periodico was successfully created.' }
        format.json { render :show, status: :created, location: @periodico }
      else
        format.html { render :new }
        format.json { render json: @periodico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /periodicos/1
  # PATCH/PUT /periodicos/1.json
  def update
    respond_to do |format|
      if @periodico.update(periodico_params)
        format.html { redirect_to @periodico, notice: 'Periodico was successfully updated.' }
        format.json { render :show, status: :ok, location: @periodico }
      else
        format.html { render :edit }
        format.json { render json: @periodico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /periodicos/1
  # DELETE /periodicos/1.json
  def destroy
    @periodico.destroy
    respond_to do |format|
      format.html { redirect_to periodicos_url, notice: 'Periodico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_periodico
      @periodico = Periodico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def periodico_params
      params.require(:periodico).permit(:nome, :edicao, :descricao, :periocidade, :num_exemplares, :tempo_emprestimo)
    end
end
