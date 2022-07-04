class PersonDto {
  final String id;
  final String sexo;
  final int idade;
  final String racaCor;
  final String estado;
  final String municipio;
  final String sintomas;

  PersonDto({
    required this.id,
    required this.sexo,
    required this.idade,
    required this.racaCor,
    required this.estado,
    required this.municipio,
    required this.sintomas,
  });

  static PersonDto fromJson(dynamic e) {
    return PersonDto(
            id: e['_id'],
            sexo: e['_source']['sexo'],
            idade: 1,
            racaCor: e['_source']['racaCor'],
            estado: e['_source']['estado'],
            municipio: e['_source']['municipio'],
            sintomas: e['_source']['sintomas'],
          );
  }
}

/* 
estrangeiro	:	null
dataPrimeiraDose	:	2021-06-24T03:00:00.000Z
dataSegundaDose	:	2021-09-25T03:00:00.000Z
codigoRecebeuVacina	:	1
profissionalSeguranca	:	Não
profissionalSaude	:	Não
dataReforcoDose	:	null
resultadoTeste	:	null
condicoes: null
*/