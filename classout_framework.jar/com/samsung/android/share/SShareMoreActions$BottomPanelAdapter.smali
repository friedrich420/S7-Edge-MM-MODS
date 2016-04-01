.class final Lcom/samsung/android/share/SShareMoreActions$BottomPanelAdapter;
.super Landroid/widget/BaseAdapter;
.source "SShareMoreActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/share/SShareMoreActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BottomPanelAdapter"
.end annotation


# instance fields
.field arSrc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/share/SShareMoreActions$ActionItem;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field private final inflater:Landroid/view/LayoutInflater;

.field layout:I

.field final synthetic this$0:Lcom/samsung/android/share/SShareMoreActions;


# direct methods
.method public constructor <init>(Lcom/samsung/android/share/SShareMoreActions;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 7
    .param p2, "pContext"    # Landroid/content/Context;
    .param p3, "pLayout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/share/SShareMoreActions$ActionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    .local p4, "pArSrc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/share/SShareMoreActions$ActionItem;>;"
    iput-object p1, p0, this$0:Lcom/samsung/android/share/SShareMoreActions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 307
    iput-object p2, p0, context:Landroid/content/Context;

    .line 308
    iget-object v0, p0, context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, inflater:Landroid/view/LayoutInflater;

    .line 309
    iput-object p4, p0, arSrc:Ljava/util/ArrayList;

    .line 310
    iput p3, p0, layout:I

    .line 311
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 314
    iget-object v0, p0, arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "x0"    # I

    .prologue
    .line 300
    invoke-virtual {p0, p1}, getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 318
    iget-object v0, p0, arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v0, v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getItemActionId(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 326
    iget-object v0, p0, arSrc:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget v0, v0, Lcom/samsung/android/share/SShareMoreActions$ActionItem;->id:I

    return v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 322
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    .line 331
    move v2, p1

    .line 332
    .local v2, "pos":I
    if-nez p2, :cond_c

    .line 333
    iget-object v4, p0, inflater:Landroid/view/LayoutInflater;

    iget v5, p0, layout:I

    invoke-virtual {v4, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 335
    :cond_c
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareMoreActions;

    # getter for: Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/share/SShareMoreActions;->access$000(Lcom/samsung/android/share/SShareMoreActions;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v0, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 336
    .local v0, "fontScale":F
    const v4, 0x3f99999a    # 1.2f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_26

    .line 337
    const v0, 0x3f99999a    # 1.2f

    .line 340
    :cond_26
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareMoreActions;

    # getter for: Lcom/samsung/android/share/SShareMoreActions;->mEnabledShowBtnBg:Z
    invoke-static {v4}, Lcom/samsung/android/share/SShareMoreActions;->access$100(Lcom/samsung/android/share/SShareMoreActions;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 341
    const v4, 0x10809c4

    invoke-virtual {p2, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 344
    :cond_34
    const v4, 0x1020006

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 346
    .local v1, "img":Landroid/widget/ImageView;
    iget-object v4, p0, arSrc:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget v4, v4, Lcom/samsung/android/share/SShareMoreActions$ActionItem;->icon:I

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    const v4, 0x1020083

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 348
    .local v3, "txt":Landroid/widget/TextView;
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareMoreActions;

    iget-object v5, p0, this$0:Lcom/samsung/android/share/SShareMoreActions;

    # getter for: Lcom/samsung/android/share/SShareMoreActions;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/samsung/android/share/SShareMoreActions;->access$000(Lcom/samsung/android/share/SShareMoreActions;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050274

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    # setter for: Lcom/samsung/android/share/SShareMoreActions;->defaultTextSize:F
    invoke-static {v4, v5}, Lcom/samsung/android/share/SShareMoreActions;->access$202(Lcom/samsung/android/share/SShareMoreActions;F)F

    .line 349
    iget-object v4, p0, this$0:Lcom/samsung/android/share/SShareMoreActions;

    # getter for: Lcom/samsung/android/share/SShareMoreActions;->defaultTextSize:F
    invoke-static {v4}, Lcom/samsung/android/share/SShareMoreActions;->access$200(Lcom/samsung/android/share/SShareMoreActions;)F

    move-result v4

    mul-float/2addr v4, v0

    invoke-virtual {v3, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 350
    iget-object v4, p0, arSrc:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/share/SShareMoreActions$ActionItem;

    iget-object v4, v4, Lcom/samsung/android/share/SShareMoreActions$ActionItem;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    return-object p2
.end method
