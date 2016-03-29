.class Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;
.super Ljava/lang/Object;
.source "QSEditPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSEditPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayListClass"
.end annotation


# instance fields
.field private childRect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private fakeBtnStringsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private originalBtnStringsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private overlayedLayoutsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private panelLayoutsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/qs/QSEditPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSEditPanel;)V
    .locals 1

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->this$0:Lcom/android/systemui/qs/QSEditPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/QSEditPanel;Lcom/android/systemui/qs/QSEditPanel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSEditPanel;
    .param p2, "x1"    # Lcom/android/systemui/qs/QSEditPanel$1;

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;-><init>(Lcom/android/systemui/qs/QSEditPanel;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->originalBtnStringsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->panelLayoutsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->overlayedLayoutsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->childRect:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/QSEditPanel$ArrayListClass;->fakeBtnStringsList:Ljava/util/ArrayList;

    return-object v0
.end method
