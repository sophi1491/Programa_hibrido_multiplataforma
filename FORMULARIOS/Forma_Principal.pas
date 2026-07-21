unit Forma_Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,Forma_LCD, Vcl.Buttons,ShellAPI;

type
  TFormaPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    Button1: TButton;
    Button4: TButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormaPrincipal: TFormaPrincipal;

implementation

{$R *.dfm}




procedure TFormaPrincipal.BitBtn1Click(Sender: TObject);
begin

  try
    ShellExecute(FormaLCD.Handle, nil,
      'java',
      PChar('-jar "C:\Users\sophi\TEC\VERANO2026\AUTOMATAS2\PROYECTO HIBRIDO MULTIPLATAFORMA\ARBOL EXPRESION JAVA\ArbolExpresiones.jar"'),
      nil, SW_SHOWNORMAL);
  except
    showMessage('No se encontro la aplicacion');
  end;

end;

procedure TFormaPrincipal.BitBtn3Click(Sender: TObject);
begin
   try
      ShellExecute(Handle, 'open',
        PChar('C:\Users\sophi\TEC\VERANO2026\AUTOMATAS2\PROYECTO HIBRIDO MULTIPLATAFORMA\ARCHIVOS DE TEXTO\reglas-semanticas.txt'),
        nil, nil, SW_SHOWNORMAL);
    except
      ShowMessage('No se encontró el archivo');
    end;

end;

procedure TFormaPrincipal.BitBtn4Click(Sender: TObject);
begin
      try
    ShellExecute(Handle, 'open',
      PChar('C:\Users\sophi\TEC\VERANO2026\AUTOMATAS2\PROYECTO HIBRIDO MULTIPLATAFORMA\ARCHIVOS DE TEXTO\codigo_intermedio_ciscoscript.txt'),
      nil, nil, SW_SHOWNORMAL);
  except
    ShowMessage('No se encontró el archivo');
  end;
end;

procedure TFormaPrincipal.BitBtn5Click(Sender: TObject);
begin
try
    ShellExecute(Handle, 'open',
      'https://github.com/jeespinosabe/CiscoScript.git',
      nil, nil, SW_SHOWNORMAL);
  except
    ShowMessage('No se pudo abrir el link');
  end;
end;

procedure TFormaPrincipal.Button1Click(Sender: TObject);
begin
    FormaLCD.show;

end;

procedure TFormaPrincipal.Button4Click(Sender: TObject);
begin
Application.terminate;
end;

end.
