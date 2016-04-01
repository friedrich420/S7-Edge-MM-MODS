.class Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StaticRotationList"
.end annotation


# instance fields
.field private final mImeSubtypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 268
    .local p1, "imeSubtypeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p1, p0, mImeSubtypeList:Ljava/util/List;

    .line 270
    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;

    .prologue
    .line 266
    iget-object v0, p0, mImeSubtypeList:Ljava/util/List;

    return-object v0
.end method

.method private getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .registers 8
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 280
    # invokes: Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    invoke-static {p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->access$100(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v1

    .line 281
    .local v1, "currentSubtypeId":I
    iget-object v4, p0, mImeSubtypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 282
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v0, :cond_25

    .line 283
    iget-object v4, p0, mImeSubtypeList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 285
    .local v3, "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v4, v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1, v4}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    iget v4, v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    if-ne v4, v1, :cond_22

    .line 289
    .end local v2    # "i":I
    .end local v3    # "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :goto_21
    return v2

    .line 282
    .restart local v2    # "i":I
    .restart local v3    # "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 289
    .end local v3    # "isli":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    :cond_25
    const/4 v2, -0x1

    goto :goto_21
.end method


# virtual methods
.method protected dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v4, p0, mImeSubtypeList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    .line 321
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_3a

    .line 322
    move v3, v1

    .line 323
    .local v3, "rank":I
    iget-object v4, p0, mImeSubtypeList:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 324
    .local v2, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "rank="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 326
    .end local v2    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v3    # "rank":I
    :cond_3a
    return-void
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .registers 12
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v5, 0x0

    .line 294
    if-nez p2, :cond_5

    move-object v1, v5

    .line 316
    :cond_4
    :goto_4
    return-object v1

    .line 297
    :cond_5
    iget-object v6, p0, mImeSubtypeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-gt v6, v7, :cond_10

    move-object v1, v5

    .line 298
    goto :goto_4

    .line 300
    :cond_10
    invoke-direct {p0, p2, p3}, getIndex(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v3

    .line 301
    .local v3, "currentIndex":I
    if-gez v3, :cond_18

    move-object v1, v5

    .line 302
    goto :goto_4

    .line 304
    :cond_18
    iget-object v6, p0, mImeSubtypeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 305
    .local v0, "N":I
    const/4 v4, 0x1

    .local v4, "offset":I
    :goto_1f
    if-ge v4, v0, :cond_3a

    .line 307
    add-int v6, v3, v4

    rem-int v2, v6, v0

    .line 308
    .local v2, "candidateIndex":I
    iget-object v6, p0, mImeSubtypeList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 311
    .local v1, "candidate":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-eqz p1, :cond_4

    iget-object v6, v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p2, v6}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 305
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .end local v1    # "candidate":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v2    # "candidateIndex":I
    :cond_3a
    move-object v1, v5

    .line 316
    goto :goto_4
.end method
