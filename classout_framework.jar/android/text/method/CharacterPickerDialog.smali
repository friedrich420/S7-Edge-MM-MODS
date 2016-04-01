.class public Landroid/text/method/CharacterPickerDialog;
.super Landroid/app/Dialog;
.source "CharacterPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/CharacterPickerDialog$OptionsAdapter;
    }
.end annotation


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInsert:Z

.field private mOptions:Ljava/lang/String;

.field private mText:Landroid/text/Editable;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "text"    # Landroid/text/Editable;
    .param p4, "options"    # Ljava/lang/String;
    .param p5, "insert"    # Z

    .prologue
    .line 57
    const v0, 0x1030059

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 59
    iput-object p2, p0, mView:Landroid/view/View;

    .line 60
    iput-object p3, p0, mText:Landroid/text/Editable;

    .line 61
    iput-object p4, p0, mOptions:Ljava/lang/String;

    .line 62
    iput-boolean p5, p0, mInsert:Z

    .line 63
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    .line 64
    return-void
.end method

.method static synthetic access$000(Landroid/text/method/CharacterPickerDialog;)Landroid/view/LayoutInflater;
    .registers 2
    .param p0, "x0"    # Landroid/text/method/CharacterPickerDialog;

    .prologue
    .line 40
    iget-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/text/method/CharacterPickerDialog;

    .prologue
    .line 40
    iget-object v0, p0, mOptions:Ljava/lang/String;

    return-object v0
.end method

.method private replaceCharacterAndClose(Ljava/lang/CharSequence;)V
    .registers 5
    .param p1, "replace"    # Ljava/lang/CharSequence;

    .prologue
    .line 94
    iget-object v1, p0, mText:Landroid/text/Editable;

    invoke-static {v1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 95
    .local v0, "selEnd":I
    iget-boolean v1, p0, mInsert:Z

    if-nez v1, :cond_c

    if-nez v0, :cond_15

    .line 96
    :cond_c
    iget-object v1, p0, mText:Landroid/text/Editable;

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 101
    :goto_11
    invoke-virtual {p0}, dismiss()V

    .line 102
    return-void

    .line 98
    :cond_15
    iget-object v1, p0, mText:Landroid/text/Editable;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_11
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v1, p0, mCancelButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_8

    .line 109
    invoke-virtual {p0}, dismiss()V

    .line 114
    .end local p1    # "v":Landroid/view/View;
    :cond_7
    :goto_7
    return-void

    .line 110
    .restart local p1    # "v":Landroid/view/View;
    :cond_8
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_7

    .line 111
    check-cast p1, Landroid/widget/Button;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 112
    .local v0, "result":Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 71
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 72
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 73
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 75
    const v2, 0x109003d

    invoke-virtual {p0, v2}, setContentView(I)V

    .line 77
    const v2, 0x1020381

    invoke-virtual {p0, v2}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 78
    .local v0, "grid":Landroid/widget/GridView;
    new-instance v2, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;-><init>(Landroid/text/method/CharacterPickerDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 79
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 81
    const v2, 0x1020382

    invoke-virtual {p0, v2}, findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, mCancelButton:Landroid/widget/Button;

    .line 82
    iget-object v2, p0, mCancelButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 89
    iget-object v1, p0, mOptions:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0, v0}, replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    .line 91
    return-void
.end method