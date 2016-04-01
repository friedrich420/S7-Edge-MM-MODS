.class public Lcom/android/internal/policy/PhoneWindow$ColorViewState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ColorViewState"
.end annotation


# instance fields
.field final hideWindowFlag:I

.field final horizontalGravity:I

.field final id:I

.field present:Z

.field final systemUiHideFlag:I

.field targetVisibility:I

.field final transitionName:Ljava/lang/String;

.field final translucentFlag:I

.field final verticalGravity:I

.field public view:Landroid/view/View;


# direct methods
.method constructor <init>(IIIILjava/lang/String;II)V
    .registers 9
    .param p1, "systemUiHideFlag"    # I
    .param p2, "translucentFlag"    # I
    .param p3, "verticalGravity"    # I
    .param p4, "horizontalGravity"    # I
    .param p5, "transitionName"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "hideWindowFlag"    # I

    .prologue
    .line 5820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5806
    const/4 v0, 0x0

    iput-object v0, p0, view:Landroid/view/View;

    .line 5807
    const/4 v0, 0x4

    iput v0, p0, targetVisibility:I

    .line 5808
    const/4 v0, 0x0

    iput-boolean v0, p0, present:Z

    .line 5821
    iput p6, p0, id:I

    .line 5822
    iput p1, p0, systemUiHideFlag:I

    .line 5823
    iput p2, p0, translucentFlag:I

    .line 5824
    iput p3, p0, verticalGravity:I

    .line 5825
    iput p4, p0, horizontalGravity:I

    .line 5826
    iput-object p5, p0, transitionName:Ljava/lang/String;

    .line 5827
    iput p7, p0, hideWindowFlag:I

    .line 5828
    return-void
.end method
