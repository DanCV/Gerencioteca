class EmprestimoLivrosController < ApplicationController
  before_action :set_emprestimo_livro, only: [:show, :edit, :update, :destroy]

  # GET /emprestimo_livros
  # GET /emprestimo_livros.json
  def index
    @q = EmprestimoLivro.select('emprestimo_livros.*,usuarios.nome as usuarios, livros.nome as livros, usuarios.cod_institucional as usuarios').joins(:usuario,:livro).ransack(params[:q])
    @emprestimo_livros = @q.result(distinct: true)
  end

  # GET /emprestimo_livros/1
  # GET /emprestimo_livros/1.json
  def show
  end

  # GET /emprestimo_livros/new
  def new
    @emprestimo_livro = EmprestimoLivro.new
  end

  # GET /emprestimo_livros/1/edit
  def edit
  end

  # POST /emprestimo_livros
  # POST /emprestimo_livros.json
  def create
    @emprestimo_livro = EmprestimoLivro.new(emprestimo_livro_params)
    respond_to do |format|
      if @emprestimo_livro.save
        format.html { redirect_to @emprestimo_livro, notice: 'Emprestimo livro was successfully created.' }
        format.json { render :show, status: :created, location: @emprestimo_livro }
      else
        format.html { render :new }
        format.json { render json: @emprestimo_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /emprestimo_livros/1
  # PATCH/PUT /emprestimo_livros/1.json
  def update
    respond_to do |format|
      if @emprestimo_livro.update(emprestimo_livro_params)
        format.html { redirect_to @emprestimo_livro, notice: 'Emprestimo livro was successfully updated.' }
        format.json { render :show, status: :ok, location: @emprestimo_livro }
      else
        format.html { render :edit }
        format.json { render json: @emprestimo_livro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /emprestimo_livros/1
  # DELETE /emprestimo_livros/1.json
  def destroy
    @emprestimo_livro.destroy
    respond_to do |format|
      format.html { redirect_to emprestimo_livros_url, notice: 'Emprestimo livro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_emprestimo_livro
      @emprestimo_livro = EmprestimoLivro.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def emprestimo_livro_params
      params.require(:emprestimo_livro).permit(:usuario_id, :livro_id, :dia, :devolucao,:status)
    end
end
