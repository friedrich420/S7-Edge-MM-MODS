.class Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ItemAnimationInfo"
.end annotation


# static fields
.field static final FADE_IN:I = 0x1

.field static final FADE_OUT:I = 0x2

.field static final MOVE:I


# instance fields
.field animType:I

.field animator:Landroid/animation/Animator;

.field id:I

.field menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;


# direct methods
.method constructor <init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "info"    # Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .param p3, "anim"    # Landroid/animation/Animator;
    .param p4, "animType"    # I

    .prologue
    .line 1472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1473
    iput p1, p0, id:I

    .line 1474
    iput-object p2, p0, menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 1475
    iput-object p3, p0, animator:Landroid/animation/Animator;

    .line 1476
    iput p4, p0, animType:I

    .line 1477
    return-void
.end method
