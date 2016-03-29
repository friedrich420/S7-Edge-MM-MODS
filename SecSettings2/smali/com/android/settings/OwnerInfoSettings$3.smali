.class Lcom/android/settings/OwnerInfoSettings$3;
.super Ljava/lang/Object;
.source "OwnerInfoSettings.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/OwnerInfoSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OwnerInfoSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/OwnerInfoSettings;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 299
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 291
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x41

    if-gt v0, v1, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/settings/OwnerInfoSettings;->info:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/OwnerInfoSettings;->access$202(Lcom/android/settings/OwnerInfoSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x41

    .line 262
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    .line 270
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_2

    .line 271
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->info:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$200(Lcom/android/settings/OwnerInfoSettings;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->info:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$200(Lcom/android/settings/OwnerInfoSettings;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, v5, :cond_1

    .line 272
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->info:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/OwnerInfoSettings;->access$200(Lcom/android/settings/OwnerInfoSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :goto_1
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v2}, Lcom/android/settings/OwnerInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a005b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 278
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mErrorTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$300(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mErrorTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$300(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    const v3, 0x7f0e01fb

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/OwnerInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mScrollView:Landroid/widget/ScrollView;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$400(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/ScrollView;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 281
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 287
    :goto_2
    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    goto/16 :goto_0

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mErrorTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$300(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 285
    iget-object v1, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    # getter for: Lcom/android/settings/OwnerInfoSettings;->mOwnerInfo:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/OwnerInfoSettings;->access$000(Lcom/android/settings/OwnerInfoSettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/OwnerInfoSettings$3;->this$0:Lcom/android/settings/OwnerInfoSettings;

    invoke-virtual {v2}, Lcom/android/settings/OwnerInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_2
.end method
