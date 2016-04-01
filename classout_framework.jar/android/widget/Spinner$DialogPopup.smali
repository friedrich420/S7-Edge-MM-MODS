.class Landroid/widget/Spinner$DialogPopup;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mPopup:Landroid/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/Spinner;


# direct methods
.method private constructor <init>(Landroid/widget/Spinner;)V
    .registers 2

    .prologue
    .line 1177
    iput-object p1, p0, this$0:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Spinner;Landroid/widget/Spinner$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/Spinner;
    .param p2, "x1"    # Landroid/widget/Spinner$1;

    .prologue
    .line 1177
    invoke-direct {p0, p1}, <init>(Landroid/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .prologue
    .line 1183
    iget-object v0, p0, mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 1184
    iget-object v0, p0, mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1185
    const/4 v0, 0x0

    iput-object v0, p0, mPopup:Landroid/app/AlertDialog;

    .line 1187
    :cond_c
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .prologue
    .line 1246
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 1202
    iget-object v0, p0, mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .registers 2

    .prologue
    .line 1256
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .registers 2

    .prologue
    .line 1251
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 1190
    iget-object v0, p0, mPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    iget-object v0, p0, mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1222
    iget-object v0, p0, this$0:Landroid/widget/Spinner;

    invoke-virtual {v0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1223
    iget-object v0, p0, this$0:Landroid/widget/Spinner;

    iget-object v0, v0, Landroid/widget/Spinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_17

    .line 1224
    iget-object v0, p0, this$0:Landroid/widget/Spinner;

    const/4 v1, 0x0

    iget-object v2, p0, mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 1226
    :cond_17
    invoke-virtual {p0}, dismiss()V

    .line 1227
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 1194
    iput-object p1, p0, mListAdapter:Landroid/widget/ListAdapter;

    .line 1195
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1231
    const-string v0, "Spinner"

    const-string v1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    return-void
.end method

.method public setHeight(I)V
    .registers 4
    .param p1, "height"    # I

    .prologue
    .line 1262
    const-string v0, "Spinner"

    const-string v1, "Cannot set DropDown Height for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    return-void
.end method

.method public setHorizontalOffset(I)V
    .registers 4
    .param p1, "px"    # I

    .prologue
    .line 1241
    const-string v0, "Spinner"

    const-string v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1198
    iput-object p1, p0, mPrompt:Ljava/lang/CharSequence;

    .line 1199
    return-void
.end method

.method public setVerticalOffset(I)V
    .registers 4
    .param p1, "px"    # I

    .prologue
    .line 1236
    const-string v0, "Spinner"

    const-string v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    return-void
.end method

.method public show(II)V
    .registers 7
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .prologue
    .line 1206
    iget-object v2, p0, mListAdapter:Landroid/widget/ListAdapter;

    if-nez v2, :cond_5

    .line 1219
    :goto_4
    return-void

    .line 1209
    :cond_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, this$0:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1210
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, mPrompt:Ljava/lang/CharSequence;

    if-eqz v2, :cond_19

    .line 1211
    iget-object v2, p0, mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1213
    :cond_19
    iget-object v2, p0, mListAdapter:Landroid/widget/ListAdapter;

    iget-object v3, p0, this$0:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v0, v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, mPopup:Landroid/app/AlertDialog;

    .line 1215
    iget-object v2, p0, mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1216
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1217
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1218
    iget-object v2, p0, mPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_4
.end method
