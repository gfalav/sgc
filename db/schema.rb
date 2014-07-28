# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140727181144) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "barrios", force: true do |t|
    t.integer  "localidad_id"
    t.string   "barrio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bonificacionfacts", force: true do |t|
    t.integer  "bonificacion_id"
    t.integer  "factura_id"
    t.integer  "edesal_id"
    t.integer  "linea"
    t.decimal  "porcentaje"
    t.date     "fdesde"
    t.date     "fhasta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bonificacions", force: true do |t|
    t.integer  "edesal_id"
    t.integer  "linea"
    t.decimal  "porcentaje"
    t.date     "fdesde"
    t.date     "fhasta"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "calles", force: true do |t|
    t.integer  "barrio_id"
    t.string   "calle"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clientes", force: true do |t|
    t.string   "apellido"
    t.string   "nombres"
    t.string   "documento"
    t.integer  "tdoc_id"
    t.string   "iibb"
    t.integer  "tiibb"
    t.string   "telefono"
    t.string   "email"
    t.string   "weblog"
    t.string   "contacto"
    t.integer  "ciiu_id"
    t.integer  "tcliente_id"
    t.integer  "direccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contratofacts", force: true do |t|
    t.integer  "contrato_id"
    t.integer  "factura_id"
    t.integer  "cuenta_id"
    t.string   "nombre"
    t.integer  "tcuit_id"
    t.string   "iibb"
    t.integer  "tiibb_id"
    t.integer  "tperfact_id"
    t.integer  "econtrato_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contratos", force: true do |t|
    t.integer  "cuenta_id"
    t.string   "nombre"
    t.integer  "tcuit_id"
    t.integer  "tiibb_id"
    t.integer  "tperfact_id"
    t.integer  "econtrato_id"
    t.date     "fcontratoact"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cuentas", force: true do |t|
    t.integer  "cliente_id"
    t.string   "nombre"
    t.integer  "direccion_id"
    t.integer  "tpago_id"
    t.integer  "timpagado_id"
    t.integer  "tvencimiento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "departamentos", force: true do |t|
    t.integer  "provincia_id"
    t.string   "departamento"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "direccions", force: true do |t|
    t.integer  "calle_id"
    t.integer  "nro"
    t.string   "pdepto"
    t.string   "acceso"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "edesalfacts", force: true do |t|
    t.integer  "edesal_id"
    t.integer  "factura_id"
    t.integer  "contratofact_id"
    t.string   "tarifa_id"
    t.integer  "potvigente"
    t.date     "fpotvigente"
    t.integer  "potoriginal"
    t.date     "fpotoriginal"
    t.date     "fdetectbadcosfi"
    t.integer  "csmofijo"
    t.integer  "eservicio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "edesals", force: true do |t|
    t.integer  "contrato_id"
    t.string   "tarifa_id"
    t.integer  "potvigente"
    t.date     "fpotvigente"
    t.integer  "potoriginal"
    t.date     "fpotoriginal"
    t.date     "fdetectbadcosfi"
    t.integer  "csmofijo"
    t.integer  "eservicio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enumerados", force: true do |t|
    t.string   "radical"
    t.string   "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "facturas", force: true do |t|
    t.integer  "contrato_id"
    t.integer  "periodo"
    t.date     "fdesde"
    t.date     "fhasta"
    t.date     "femision"
    t.date     "fvcto"
    t.date     "fproxvcto"
    t.date     "fupb"
    t.string   "nro"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lecturafacts", force: true do |t|
    t.integer  "lectura_id"
    t.integer  "factura_id"
    t.integer  "medidor_id"
    t.integer  "tlectura_id"
    t.date     "flectura"
    t.integer  "tconsumo_id"
    t.decimal  "lectura"
    t.decimal  "ctelect"
    t.decimal  "consumo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lecturas", force: true do |t|
    t.integer  "medidor_id"
    t.integer  "tlectura_id"
    t.date     "flectura"
    t.integer  "tconsumo_id"
    t.decimal  "lectura"
    t.decimal  "ctelect"
    t.decimal  "consumo"
    t.integer  "electura_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lineas", force: true do |t|
    t.integer  "factura_id"
    t.integer  "concepto_id"
    t.decimal  "importe"
    t.string   "leyenda"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "localidads", force: true do |t|
    t.integer  "municipio_id"
    t.string   "localidad"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medidors", force: true do |t|
    t.integer  "suministro_id"
    t.integer  "tmedidor_id"
    t.string   "nromedidor"
    t.integer  "marca_id"
    t.string   "modelo"
    t.string   "corriente"
    t.integer  "ttension_id"
    t.integer  "tfase_id"
    t.decimal  "cteapa"
    t.date     "ffabric"
    t.decimal  "cperds"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "municipios", force: true do |t|
    t.integer  "departamento_id"
    t.string   "municipio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "otrocargofacts", force: true do |t|
    t.integer  "otrocargo_id"
    t.integer  "factura_id"
    t.integer  "edesal_id"
    t.integer  "concepto_id"
    t.decimal  "importe"
    t.date     "ffactura"
    t.integer  "ecargo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "otrocargos", force: true do |t|
    t.integer  "edesal_id"
    t.integer  "concepto_id"
    t.decimal  "importe"
    t.date     "ffactura"
    t.integer  "ecargo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paises", force: true do |t|
    t.string   "pais"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "provincias", force: true do |t|
    t.integer  "pais_id"
    t.string   "provincia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suministros", force: true do |t|
    t.string   "nombre"
    t.integer  "edesal_id"
    t.integer  "tmedicion_id"
    t.integer  "tconexion_id"
    t.integer  "ttension_id"
    t.integer  "tfase_id"
    t.integer  "direccion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
