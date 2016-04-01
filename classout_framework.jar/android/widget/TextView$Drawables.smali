.class Landroid/widget/TextView$Drawables;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drawables"
.end annotation


# static fields
.field static final BOTTOM:I = 0x3

.field static final DRAWABLE_LEFT:I = 0x1

.field static final DRAWABLE_NONE:I = -0x1

.field static final DRAWABLE_RIGHT:I = 0x0

.field static final LEFT:I = 0x0

.field static final RIGHT:I = 0x2

.field static final TOP:I = 0x1


# instance fields
.field final mCompoundRect:Landroid/graphics/Rect;

.field mDrawableEnd:Landroid/graphics/drawable/Drawable;

.field mDrawableError:Landroid/graphics/drawable/Drawable;

.field mDrawableHeightEnd:I

.field mDrawableHeightError:I

.field mDrawableHeightLeft:I

.field mDrawableHeightRight:I

.field mDrawableHeightStart:I

.field mDrawableHeightTemp:I

.field mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

.field mDrawablePadding:I

.field mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

.field mDrawableSaved:I

.field mDrawableSizeBottom:I

.field mDrawableSizeEnd:I

.field mDrawableSizeError:I

.field mDrawableSizeLeft:I

.field mDrawableSizeRight:I

.field mDrawableSizeStart:I

.field mDrawableSizeTemp:I

.field mDrawableSizeTop:I

.field mDrawableStart:Landroid/graphics/drawable/Drawable;

.field mDrawableTemp:Landroid/graphics/drawable/Drawable;

.field mDrawableWidthBottom:I

.field mDrawableWidthTop:I

.field mHasTint:Z

.field mHasTintMode:Z

.field mIsRtlCompatibilityMode:Z

.field mOverride:Z

.field final mShowing:[Landroid/graphics/drawable/Drawable;

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mCompoundRect:Landroid/graphics/Rect;

    .line 584
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    .line 605
    const/4 v1, -0x1

    iput v1, p0, mDrawableSaved:I

    .line 608
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 609
    .local v0, "targetSdkVersion":I
    const/16 v1, 0x11

    if-lt v0, v1, :cond_27

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->hasRtlSupport()Z

    move-result v1

    if-nez v1, :cond_2d

    :cond_27
    const/4 v1, 0x1

    :goto_28
    iput-boolean v1, p0, mIsRtlCompatibilityMode:Z

    .line 611
    iput-boolean v2, p0, mOverride:Z

    .line 612
    return-void

    :cond_2d
    move v1, v2

    .line 609
    goto :goto_28
.end method

.method private applyErrorDrawableIfNeeded(I)V
    .registers 6
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 696
    iget v0, p0, mDrawableSaved:I

    packed-switch v0, :pswitch_data_6c

    .line 711
    :goto_7
    iget-object v0, p0, mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2c

    .line 712
    packed-switch p1, :pswitch_data_74

    .line 726
    iput v2, p0, mDrawableSaved:I

    .line 728
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    iput-object v0, p0, mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 729
    iget v0, p0, mDrawableSizeRight:I

    iput v0, p0, mDrawableSizeTemp:I

    .line 730
    iget v0, p0, mDrawableHeightRight:I

    iput v0, p0, mDrawableHeightTemp:I

    .line 732
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableError:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 733
    iget v0, p0, mDrawableSizeError:I

    iput v0, p0, mDrawableSizeRight:I

    .line 734
    iget v0, p0, mDrawableHeightError:I

    iput v0, p0, mDrawableHeightRight:I

    .line 738
    :cond_2c
    :goto_2c
    return-void

    .line 698
    :pswitch_2d
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    .line 699
    iget v0, p0, mDrawableSizeTemp:I

    iput v0, p0, mDrawableSizeLeft:I

    .line 700
    iget v0, p0, mDrawableHeightTemp:I

    iput v0, p0, mDrawableHeightLeft:I

    goto :goto_7

    .line 703
    :pswitch_3c
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableTemp:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 704
    iget v0, p0, mDrawableSizeTemp:I

    iput v0, p0, mDrawableSizeRight:I

    .line 705
    iget v0, p0, mDrawableHeightTemp:I

    iput v0, p0, mDrawableHeightRight:I

    goto :goto_7

    .line 714
    :pswitch_4b
    const/4 v0, 0x1

    iput v0, p0, mDrawableSaved:I

    .line 716
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iput-object v0, p0, mDrawableTemp:Landroid/graphics/drawable/Drawable;

    .line 717
    iget v0, p0, mDrawableSizeLeft:I

    iput v0, p0, mDrawableSizeTemp:I

    .line 718
    iget v0, p0, mDrawableHeightLeft:I

    iput v0, p0, mDrawableHeightTemp:I

    .line 720
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableError:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    .line 721
    iget v0, p0, mDrawableSizeError:I

    iput v0, p0, mDrawableSizeLeft:I

    .line 722
    iget v0, p0, mDrawableHeightError:I

    iput v0, p0, mDrawableHeightLeft:I

    goto :goto_2c

    .line 696
    nop

    :pswitch_data_6c
    .packed-switch 0x0
        :pswitch_3c
        :pswitch_2d
    .end packed-switch

    .line 712
    :pswitch_data_74
    .packed-switch 0x1
        :pswitch_4b
    .end packed-switch
.end method

.method private updateDrawablesLayoutDirection(I)V
    .registers 6
    .param p1, "layoutDirection"    # I

    .prologue
    .line 667
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    .local v0, "arr$":[Landroid/graphics/drawable/Drawable;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_4
    if-ge v2, v3, :cond_10

    aget-object v1, v0, v2

    .line 668
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_d

    .line 669
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 667
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 672
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_10
    return-void
.end method


# virtual methods
.method public resolveWithLayoutDirection(I)V
    .registers 6
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableLeftInitial:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    .line 617
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableRightInitial:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 619
    iget-boolean v0, p0, mIsRtlCompatibilityMode:Z

    if-eqz v0, :cond_49

    .line 621
    iget-object v0, p0, mDrawableStart:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2a

    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    if-nez v0, :cond_2a

    .line 622
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    .line 623
    iget v0, p0, mDrawableSizeStart:I

    iput v0, p0, mDrawableSizeLeft:I

    .line 624
    iget v0, p0, mDrawableHeightStart:I

    iput v0, p0, mDrawableHeightLeft:I

    .line 627
    :cond_2a
    iget-object v0, p0, mDrawableEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_42

    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v3

    if-nez v0, :cond_42

    .line 628
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 629
    iget v0, p0, mDrawableSizeEnd:I

    iput v0, p0, mDrawableSizeRight:I

    .line 630
    iget v0, p0, mDrawableHeightEnd:I

    iput v0, p0, mDrawableHeightRight:I

    .line 662
    :cond_42
    :goto_42
    invoke-direct {p0, p1}, applyErrorDrawableIfNeeded(I)V

    .line 663
    invoke-direct {p0, p1}, updateDrawablesLayoutDirection(I)V

    .line 664
    return-void

    .line 635
    :cond_49
    packed-switch p1, :pswitch_data_8e

    .line 650
    iget-boolean v0, p0, mOverride:Z

    if-eqz v0, :cond_42

    .line 651
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    .line 652
    iget v0, p0, mDrawableSizeStart:I

    iput v0, p0, mDrawableSizeLeft:I

    .line 653
    iget v0, p0, mDrawableHeightStart:I

    iput v0, p0, mDrawableHeightLeft:I

    .line 655
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 656
    iget v0, p0, mDrawableSizeEnd:I

    iput v0, p0, mDrawableSizeRight:I

    .line 657
    iget v0, p0, mDrawableHeightEnd:I

    iput v0, p0, mDrawableHeightRight:I

    goto :goto_42

    .line 637
    :pswitch_6d
    iget-boolean v0, p0, mOverride:Z

    if-eqz v0, :cond_42

    .line 638
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableStart:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v3

    .line 639
    iget v0, p0, mDrawableSizeStart:I

    iput v0, p0, mDrawableSizeRight:I

    .line 640
    iget v0, p0, mDrawableHeightStart:I

    iput v0, p0, mDrawableHeightRight:I

    .line 642
    iget-object v0, p0, mShowing:[Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mDrawableEnd:Landroid/graphics/drawable/Drawable;

    aput-object v1, v0, v2

    .line 643
    iget v0, p0, mDrawableSizeEnd:I

    iput v0, p0, mDrawableSizeLeft:I

    .line 644
    iget v0, p0, mDrawableHeightEnd:I

    iput v0, p0, mDrawableHeightLeft:I

    goto :goto_42

    .line 635
    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_6d
    .end packed-switch
.end method

.method public setErrorDrawable(Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V
    .registers 7
    .param p1, "dr"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 675
    iget-object v2, p0, mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_e

    iget-object v2, p0, mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_e

    .line 676
    iget-object v2, p0, mDrawableError:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 678
    :cond_e
    iput-object p1, p0, mDrawableError:Landroid/graphics/drawable/Drawable;

    .line 680
    iget-object v2, p0, mDrawableError:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_36

    .line 681
    iget-object v0, p0, mCompoundRect:Landroid/graphics/Rect;

    .line 682
    .local v0, "compoundRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 684
    .local v1, "state":[I
    iget-object v2, p0, mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 685
    iget-object v2, p0, mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 686
    iget-object v2, p0, mDrawableError:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 687
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, mDrawableSizeError:I

    .line 688
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, mDrawableHeightError:I

    .line 692
    .end local v0    # "compoundRect":Landroid/graphics/Rect;
    .end local v1    # "state":[I
    :goto_35
    return-void

    .line 690
    :cond_36
    const/4 v2, 0x0

    iput v2, p0, mDrawableHeightError:I

    iput v2, p0, mDrawableSizeError:I

    goto :goto_35
.end method
