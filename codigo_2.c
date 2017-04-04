#include <stdio.h>

#include <stdlib.h>

#include <locale.h>

#include <conio.h>



int main(int argc, const char argv[]) {

	

	setlocale(LC_ALL, "portuguese");

	char resp = 'a';

	

	printf("||=============================================================||\n");

	printf("||                                                             ||\n");

	printf("||                    Pense um número...                       ||\n");

	printf("||                                                             ||\n");

	printf("||=============================================================||\n");

	system("pause");



	while (resp != 's' && resp != 'S') {



		while ((resp != 's' && resp != 'S') && (resp != 'n' && resp != 'N')) {

			system("cls||clear");



			printf("||=============================================================||\n");

			printf("||                                                             ||\n");

			printf("||                        Pensou?                              ||\n");

			printf("||           [s] - sim                   [n] - não             ||\n");

			printf("||                                                             ||\n");

			printf("||=============================================================||\n");



			resp = _getch();



			if (resp != 's' && resp != 'S' && resp != 'n' && resp != 'N') {



				printf("||=============================================================||\n");

				printf("||                                                             ||\n");

				printf("||                    Comando Inválido!                        ||\n");

				printf("||                                                             ||\n");

				printf("||=============================================================||\n");



				system("pause");

			}

		}

		if (resp == 'n' || resp == 'N') {



			system("cls||clear");

			printf("||=============================================================||\n");

			printf("||                                                             ||\n");

			printf("||                    Que lerdeza hein!                        ||\n");

			printf("||                                                             ||\n");

			printf("||=============================================================||\n");

			resp = 'a';

			system("pause");

		}

	}



	system("cls||clear");

	printf("||=============================================================||\n");

	printf("||                                                             ||\n");

	printf("||                   Multiplique por 2...                      ||\n");

	printf("||                                                             ||\n");

	printf("||=============================================================||\n");



	system("pause");

	system("cls||clear");



	printf("||=============================================================||\n");

	printf("||                                                             ||\n");

	printf("||                         Some 10...                          ||\n");

	printf("||                                                             ||\n");

	printf("||=============================================================||\n");



	system("pause");

	system("cls||clear");



	printf("||=============================================================||\n");

	printf("||                                                             ||\n");

	printf("||                       Divida por 2...                       ||\n");

	printf("||                                                             ||\n");

	printf("||=============================================================||\n");



	system("pause");

	system("cls||clear");



	printf("||=============================================================||\n");

	printf("||                                                             ||\n");

	printf("||               Menos o número que você pensou...             ||\n");

	printf("||                                                             ||\n");

	printf("||=============================================================||\n");



	system("pause");

	system("cls||clear");



	printf("||=============================================================||\n");

	printf("||                                                             ||\n");

	printf("||               O resultado da sua operação é 5.              ||\n");

	printf("||                                                             ||\n");

	printf("||=============================================================||\n");



	system("pause");

	system("cls||clear");



	printf("||=============================================================||\n");

	printf("||                                                             ||\n");

	printf("||                        Acertei né?                          ||\n");

	printf("||                                                             ||\n");

	printf("||=============================================================||\n");



	system("pause");

	system("cls||clear");



	printf("||=============================================================||\n");

	printf("||                                                             ||\n");

	printf("||                 Eu sei que acertei... :D                    ||\n");

	printf("||                                                             ||\n");

	printf("||=============================================================||\n");

	system("pause");

	system("cls||clear");

	

	printf("||=============================================================||\n");

	printf("||                                                             ||\n");

	printf("||             Obrigada pela sua participação!                 ||\n");

	printf("||                   Agnes Cunha Marques                       ||\n");

	printf("||                 ADS 1º Semestre - 2016                      ||\n");

	printf("||                                                             ||\n");

	printf("||=============================================================||\n");

	system("pause");

}
