.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation


# static fields
.field public static final VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private mIsAmbient:Z

.field private mKey:Ljava/lang/String;

.field private mMatchesInterruptionFilter:Z

.field private mRank:I

.field private mVisibilityOverride:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 844
    const/4 v0, -0x1

    iput v0, p0, mRank:I

    .line 849
    return-void
.end method

.method static synthetic access$800(Landroid/service/notification/NotificationListenerService$Ranking;Ljava/lang/String;IZZI)V
    .registers 6
    .param p0, "x0"    # Landroid/service/notification/NotificationListenerService$Ranking;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # I

    .prologue
    .line 838
    invoke-direct/range {p0 .. p5}, populate(Ljava/lang/String;IZZI)V

    return-void
.end method

.method private populate(Ljava/lang/String;IZZI)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "isAmbient"    # Z
    .param p4, "matchesInterruptionFilter"    # Z
    .param p5, "visibilityOverride"    # I

    .prologue
    .line 901
    iput-object p1, p0, mKey:Ljava/lang/String;

    .line 902
    iput p2, p0, mRank:I

    .line 903
    iput-boolean p3, p0, mIsAmbient:Z

    .line 904
    iput-boolean p4, p0, mMatchesInterruptionFilter:Z

    .line 905
    iput p5, p0, mVisibilityOverride:I

    .line 906
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 855
    iget-object v0, p0, mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .registers 2

    .prologue
    .line 865
    iget v0, p0, mRank:I

    return v0
.end method

.method public getVisibilityOverride()I
    .registers 2

    .prologue
    .line 884
    iget v0, p0, mVisibilityOverride:I

    return v0
.end method

.method public isAmbient()Z
    .registers 2

    .prologue
    .line 873
    iget-boolean v0, p0, mIsAmbient:Z

    return v0
.end method

.method public matchesInterruptionFilter()Z
    .registers 2

    .prologue
    .line 896
    iget-boolean v0, p0, mMatchesInterruptionFilter:Z

    return v0
.end method
