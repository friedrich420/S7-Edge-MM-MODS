.class public Lcom/android/systemui/qs/QSTile$ResourceIcon;
.super Lcom/android/systemui/qs/QSTile$Icon;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResourceIcon"
.end annotation


# static fields
.field private static final ICONS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/qs/QSTile$Icon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 428
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/QSTile$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/android/systemui/qs/QSTile$Icon;-><init>()V

    .line 433
    iput p1, p0, Lcom/android/systemui/qs/QSTile$ResourceIcon;->mResId:I

    .line 434
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/systemui/qs/QSTile$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/android/systemui/qs/QSTile$1;

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile$ResourceIcon;-><init>(I)V

    return-void
.end method

.method public static get(I)Lcom/android/systemui/qs/QSTile$Icon;
    .locals 2
    .param p0, "resId"    # I

    .prologue
    .line 437
    sget-object v1, Lcom/android/systemui/qs/QSTile$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$Icon;

    .line 438
    .local v0, "icon":Lcom/android/systemui/qs/QSTile$Icon;
    if-nez v0, :cond_0

    .line 439
    new-instance v0, Lcom/android/systemui/qs/QSTile$ResourceIcon;

    .end local v0    # "icon":Lcom/android/systemui/qs/QSTile$Icon;
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;-><init>(I)V

    .line 440
    .restart local v0    # "icon":Lcom/android/systemui/qs/QSTile$Icon;
    sget-object v1, Lcom/android/systemui/qs/QSTile$ResourceIcon;->ICONS:Landroid/util/SparseArray;

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    :cond_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 456
    instance-of v0, p1, Lcom/android/systemui/qs/QSTile$ResourceIcon;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/qs/QSTile$ResourceIcon;

    .end local p1    # "o":Ljava/lang/Object;
    iget v0, p1, Lcom/android/systemui/qs/QSTile$ResourceIcon;->mResId:I

    iget v1, p0, Lcom/android/systemui/qs/QSTile$ResourceIcon;->mResId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 447
    iget v1, p0, Lcom/android/systemui/qs/QSTile$ResourceIcon;->mResId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 448
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 449
    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->start()V

    .line 451
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 461
    const-string v0, "ResourceIcon[resId=0x%08x]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/qs/QSTile$ResourceIcon;->mResId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
