.class public Lcom/android/settings/Password;
.super Landroid/app/Activity;
.source "Password.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mDigits:Landroid/widget/TextView;

.field private mHeadrText:Landroid/widget/TextView;

.field private mPassword:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/Password;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/Password;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    return-object v0
.end method

.method private keyPressed(I)V
    .locals 3
    .param p1, "keyCode"    # I

    .prologue
    .line 220
    const/16 v1, 0x43

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 223
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method private match(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aPassword"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0e00aa

    const/4 v0, 0x0

    .line 243
    invoke-direct {p0, p1}, Lcom/android/settings/Password;->reasonable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    const-string v1, "****"

    iget-object v2, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0f80

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_2
    const-string v1, "****"

    iget-object v2, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 260
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onPasswordConfirm()V
    .locals 3

    .prologue
    .line 285
    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "pwd":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/Password;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, ".password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 289
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/Password;->setResult(ILandroid/content/Intent;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/Password;->finish()V

    .line 292
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private reasonable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "aPassword"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0e00aa

    const/4 v0, 0x0

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    const-string v1, "****"

    iget-object v2, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    .line 311
    :goto_0
    return v0

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_4

    .line 304
    :cond_2
    const-string v1, "****"

    iget-object v2, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setupKeypad()V
    .locals 3

    .prologue
    const v2, 0x7f0d01fb

    .line 136
    const v1, 0x7f0d01fd

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 137
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 139
    const v1, 0x7f0d01fe

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    const v1, 0x7f0d01ff

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v1, 0x7f0d0200

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v1, 0x7f0d0201

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v1, 0x7f0d0202

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v1, 0x7f0d0203

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    const v1, 0x7f0d0204

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v1, 0x7f0d0205

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v1, 0x7f0d0207

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v1, 0x7f0d00ee

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 151
    const v1, 0x7f0d0206

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 152
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 154
    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    .local v0, "alertDialog":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0f72

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/Password$2;

    invoke-direct {v2, p0}, Lcom/android/settings/Password$2;-><init>(Lcom/android/settings/Password;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 280
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 281
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "input"    # Landroid/text/Editable;

    .prologue
    .line 64
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 55
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 228
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 229
    .local v1, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 231
    .local v0, "action":I
    if-ne v0, v2, :cond_0

    .line 232
    const/16 v3, 0x42

    if-ne v1, v3, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/android/settings/Password;->onPasswordConfirm()V

    .line 237
    :goto_0
    return v2

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 160
    :sswitch_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 164
    :sswitch_1
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 168
    :sswitch_2
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 172
    :sswitch_3
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 176
    :sswitch_4
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 180
    :sswitch_5
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 184
    :sswitch_6
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 188
    :sswitch_7
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 192
    :sswitch_8
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 196
    :sswitch_9
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 200
    :sswitch_a
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 205
    :sswitch_b
    invoke-direct {p0}, Lcom/android/settings/Password;->onPasswordConfirm()V

    goto :goto_0

    .line 210
    :sswitch_c
    invoke-virtual {p0}, Lcom/android/settings/Password;->finish()V

    goto :goto_0

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d00ee -> :sswitch_c
        0x7f0d01fb -> :sswitch_a
        0x7f0d01fd -> :sswitch_0
        0x7f0d01fe -> :sswitch_1
        0x7f0d01ff -> :sswitch_2
        0x7f0d0200 -> :sswitch_3
        0x7f0d0201 -> :sswitch_4
        0x7f0d0202 -> :sswitch_5
        0x7f0d0203 -> :sswitch_6
        0x7f0d0204 -> :sswitch_7
        0x7f0d0205 -> :sswitch_8
        0x7f0d0206 -> :sswitch_9
        0x7f0d0207 -> :sswitch_b
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/Password;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v2, 0x7f0400b9

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->setContentView(I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/Password;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 77
    const-string v2, ".title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Password;->mTitle:Ljava/lang/String;

    .line 78
    const-string v2, ".subject"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Password;->mSubject:Ljava/lang/String;

    .line 79
    const-string v2, ".password"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    .line 80
    const-string v2, "FromOtherSecurity"

    const-string v3, ".from"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/android/settings/Password;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    const v2, 0x7f0d00f8

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/Password;->mHeadrText:Landroid/widget/TextView;

    .line 84
    iget-object v2, p0, Lcom/android/settings/Password;->mHeadrText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/Password;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const v2, 0x7f0d01fa

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    .line 92
    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 93
    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    new-instance v3, Lcom/android/settings/Password$1;

    invoke-direct {v3, p0}, Lcom/android/settings/Password$1;-><init>(Lcom/android/settings/Password;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setInputType(I)V

    .line 109
    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 113
    const v2, 0x7f0d01fd

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 114
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/android/settings/Password;->setupKeypad()V

    .line 121
    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 319
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 325
    :goto_0
    return v2

    .line 321
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d01fb
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/Password;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    .line 127
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "changeCount"    # I

    .prologue
    .line 61
    return-void
.end method
