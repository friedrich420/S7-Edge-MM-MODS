.class Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicRotationList"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


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

.field private final mUsageHistoryOfSubtypeListItemIndex:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 330
    const-class v0, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .registers 5
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
    .line 334
    .local p1, "imeSubtypeListItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p1, p0, mImeSubtypeList:Ljava/util/List;

    .line 336
    iget-object v2, p0, mImeSubtypeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, mUsageHistoryOfSubtypeListItemIndex:[I

    .line 337
    iget-object v2, p0, mImeSubtypeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 338
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    if-ge v1, v0, :cond_1f

    .line 339
    iget-object v2, p0, mUsageHistoryOfSubtypeListItemIndex:[I

    aput v1, v2, v1

    .line 338
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 341
    :cond_1f
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$1;

    .prologue
    .line 329
    invoke-direct {p0, p1}, <init>(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;

    .prologue
    .line 329
    iget-object v0, p0, mImeSubtypeList:Ljava/util/List;

    return-object v0
.end method

.method private getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .registers 9
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 351
    # invokes: Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    invoke-static {p1, p2}, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController;->access$100(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v1

    .line 352
    .local v1, "currentSubtypeId":I
    iget-object v5, p0, mUsageHistoryOfSubtypeListItemIndex:[I

    array-length v0, v5

    .line 353
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "usageRank":I
    :goto_8
    if-ge v4, v0, :cond_26

    .line 354
    iget-object v5, p0, mUsageHistoryOfSubtypeListItemIndex:[I

    aget v3, v5, v4

    .line 355
    .local v3, "subtypeListItemIndex":I
    iget-object v5, p0, mImeSubtypeList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 357
    .local v2, "subtypeListItem":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    iget-object v5, v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v5, p1}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget v5, v2, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mSubtypeId:I

    if-ne v5, v1, :cond_23

    .line 363
    .end local v2    # "subtypeListItem":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v3    # "subtypeListItemIndex":I
    .end local v4    # "usageRank":I
    :goto_22
    return v4

    .line 353
    .restart local v2    # "subtypeListItem":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .restart local v3    # "subtypeListItemIndex":I
    .restart local v4    # "usageRank":I
    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 363
    .end local v2    # "subtypeListItem":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v3    # "subtypeListItemIndex":I
    :cond_26
    const/4 v4, -0x1

    goto :goto_22
.end method


# virtual methods
.method protected dump(Landroid/util/Printer;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Landroid/util/Printer;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 403
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, mUsageHistoryOfSubtypeListItemIndex:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3a

    .line 404
    iget-object v3, p0, mUsageHistoryOfSubtypeListItemIndex:[I

    aget v2, v3, v0

    .line 405
    .local v2, "rank":I
    iget-object v3, p0, mImeSubtypeList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 406
    .local v1, "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "rank="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 408
    .end local v1    # "item":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v2    # "rank":I
    :cond_3a
    return-void
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .registers 12
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p3, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v6, 0x0

    .line 380
    invoke-direct {p0, p2, p3}, getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v1

    .line 381
    .local v1, "currentUsageRank":I
    if-gez v1, :cond_9

    move-object v3, v6

    .line 399
    :cond_8
    :goto_8
    return-object v3

    .line 387
    :cond_9
    iget-object v7, p0, mUsageHistoryOfSubtypeListItemIndex:[I

    array-length v0, v7

    .line 388
    .local v0, "N":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_2c

    .line 389
    add-int v7, v1, v2

    rem-int v5, v7, v0

    .line 390
    .local v5, "subtypeListItemRank":I
    iget-object v7, p0, mUsageHistoryOfSubtypeListItemIndex:[I

    aget v4, v7, v5

    .line 392
    .local v4, "subtypeListItemIndex":I
    iget-object v7, p0, mImeSubtypeList:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    .line 394
    .local v3, "subtypeListItem":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    if-eqz p1, :cond_8

    iget-object v7, v3, Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p2, v7}, Landroid/view/inputmethod/InputMethodInfo;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 388
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .end local v3    # "subtypeListItem":Lcom/android/internal/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .end local v4    # "subtypeListItemIndex":I
    .end local v5    # "subtypeListItemRank":I
    :cond_2c
    move-object v3, v6

    .line 399
    goto :goto_8
.end method

.method public onUserAction(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 9
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    const/4 v5, 0x0

    .line 367
    invoke-direct {p0, p1, p2}, getUsageRank(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result v1

    .line 369
    .local v1, "currentUsageRank":I
    if-gtz v1, :cond_8

    .line 376
    :goto_7
    return-void

    .line 372
    :cond_8
    iget-object v2, p0, mUsageHistoryOfSubtypeListItemIndex:[I

    aget v0, v2, v1

    .line 373
    .local v0, "currentItemIndex":I
    iget-object v2, p0, mUsageHistoryOfSubtypeListItemIndex:[I

    iget-object v3, p0, mUsageHistoryOfSubtypeListItemIndex:[I

    const/4 v4, 0x1

    invoke-static {v2, v5, v3, v4, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 375
    iget-object v2, p0, mUsageHistoryOfSubtypeListItemIndex:[I

    aput v0, v2, v5

    goto :goto_7
.end method
