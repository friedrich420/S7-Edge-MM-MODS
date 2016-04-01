.class public Lmf/org/apache/html/dom/HTMLInputElementImpl;
.super Lmf/org/apache/html/dom/HTMLElementImpl;
.source "HTMLInputElementImpl.java"

# interfaces
.implements Lmf/org/apache/html/dom/HTMLFormControl;
.implements Lmf/org/w3c/dom/html/HTMLInputElement;


# static fields
.field private static final serialVersionUID:J = 0x8e23b5328e32967L


# direct methods
.method public constructor <init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .registers 3
    .param p1, "owner"    # Lmf/org/apache/html/dom/HTMLDocumentImpl;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Lmf/org/apache/html/dom/HTMLElementImpl;-><init>(Lmf/org/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    .line 285
    return-void
.end method


# virtual methods
.method public blur()V
    .registers 1

    .prologue
    .line 256
    return-void
.end method

.method public click()V
    .registers 1

    .prologue
    .line 274
    return-void
.end method

.method public focus()V
    .registers 1

    .prologue
    .line 262
    return-void
.end method

.method public getAccept()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    const-string v0, "accept"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessKey()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 80
    const-string v1, "accesskey"

    invoke-virtual {p0, v1}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "accessKey":Ljava/lang/String;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_14

    .line 82
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_14
    return-object v0
.end method

.method public getAlign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    const-string v0, "align"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    const-string v0, "alt"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChecked()Z
    .registers 2

    .prologue
    .line 122
    const-string v0, "checked"

    invoke-virtual {p0, v0}, getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDefaultChecked()Z
    .registers 2

    .prologue
    .line 52
    const-string/jumbo v0, "defaultChecked"

    invoke-virtual {p0, v0}, getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    const-string/jumbo v0, "defaultValue"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisabled()Z
    .registers 2

    .prologue
    .line 134
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0}, getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getMaxLength()I
    .registers 2

    .prologue
    .line 146
    const-string/jumbo v0, "maxlength"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, getInteger(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 158
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadOnly()Z
    .registers 2

    .prologue
    .line 170
    const-string/jumbo v0, "readonly"

    invoke-virtual {p0, v0}, getBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 182
    const-string/jumbo v0, "size"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 194
    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTabIndex()I
    .registers 3

    .prologue
    .line 208
    :try_start_0
    const-string/jumbo v1, "tabindex"

    invoke-virtual {p0, v1}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_c

    move-result v1

    .line 212
    :goto_b
    return v1

    .line 210
    :catch_c
    move-exception v0

    .line 212
    .local v0, "except":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 225
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUseMap()Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    const-string/jumbo v0, "useMap"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0}, getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public select()V
    .registers 1

    .prologue
    .line 268
    return-void
.end method

.method public setAccept(Ljava/lang/String;)V
    .registers 3
    .param p1, "accept"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string v0, "accept"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public setAccessKey(Ljava/lang/String;)V
    .registers 4
    .param p1, "accessKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 90
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_e

    .line 91
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 92
    :cond_e
    const-string v0, "accesskey"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .registers 3
    .param p1, "align"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public setAlt(Ljava/lang/String;)V
    .registers 3
    .param p1, "alt"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string v0, "alt"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "checked"    # Z

    .prologue
    .line 128
    const-string v0, "checked"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public setDefaultChecked(Z)V
    .registers 3
    .param p1, "defaultChecked"    # Z

    .prologue
    .line 59
    const-string/jumbo v0, "defaultChecked"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 60
    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 45
    const-string/jumbo v0, "defaultValue"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public setDisabled(Z)V
    .registers 3
    .param p1, "disabled"    # Z

    .prologue
    .line 140
    const-string/jumbo v0, "disabled"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 141
    return-void
.end method

.method public setMaxLength(I)V
    .registers 4
    .param p1, "maxLength"    # I

    .prologue
    .line 152
    const-string/jumbo v0, "maxlength"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 164
    const-string/jumbo v0, "name"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public setReadOnly(Z)V
    .registers 3
    .param p1, "readOnly"    # Z

    .prologue
    .line 176
    const-string/jumbo v0, "readonly"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Z)V

    .line 177
    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .registers 3
    .param p1, "size"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string/jumbo v0, "size"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .registers 3
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 200
    const-string/jumbo v0, "src"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void
.end method

.method public setTabIndex(I)V
    .registers 4
    .param p1, "tabIndex"    # I

    .prologue
    .line 219
    const-string/jumbo v0, "tabindex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    return-void
.end method

.method public setUseMap(Ljava/lang/String;)V
    .registers 3
    .param p1, "useMap"    # Ljava/lang/String;

    .prologue
    .line 237
    const-string/jumbo v0, "useMap"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 249
    const-string/jumbo v0, "value"

    invoke-virtual {p0, v0, p1}, setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    return-void
.end method
