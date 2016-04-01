.class public final enum Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;
.super Ljava/lang/Enum;
.source "MultiWindowLoggingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LP_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

.field public static final enum NORMAL_APP_LAUNCH:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

.field public static final enum NOT_SUPPORT:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

.field public static final enum RETURN_TO_HOME:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

.field public static final enum RETURN_TO_SPLIT:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

.field public static final enum SPLIT_LAUNCH:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    const-string v1, "SPLIT_LAUNCH"

    invoke-direct {v0, v1, v2}, <init>(Ljava/lang/String;I)V

    sput-object v0, SPLIT_LAUNCH:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    const-string v1, "NORMAL_APP_LAUNCH"

    invoke-direct {v0, v1, v3}, <init>(Ljava/lang/String;I)V

    sput-object v0, NORMAL_APP_LAUNCH:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    const-string v1, "NOT_SUPPORT"

    invoke-direct {v0, v1, v4}, <init>(Ljava/lang/String;I)V

    sput-object v0, NOT_SUPPORT:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    const-string v1, "RETURN_TO_HOME"

    invoke-direct {v0, v1, v5}, <init>(Ljava/lang/String;I)V

    sput-object v0, RETURN_TO_HOME:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    const-string v1, "RETURN_TO_SPLIT"

    invoke-direct {v0, v1, v6}, <init>(Ljava/lang/String;I)V

    sput-object v0, RETURN_TO_SPLIT:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    sget-object v1, SPLIT_LAUNCH:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    aput-object v1, v0, v2

    sget-object v1, NORMAL_APP_LAUNCH:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    aput-object v1, v0, v3

    sget-object v1, NOT_SUPPORT:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    aput-object v1, v0, v4

    sget-object v1, RETURN_TO_HOME:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    aput-object v1, v0, v5

    sget-object v1, RETURN_TO_SPLIT:Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    aput-object v1, v0, v6

    sput-object v0, $VALUES:[Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 43
    const-class v0, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;
    .registers 1

    .prologue
    .line 43
    sget-object v0, $VALUES:[Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    invoke-virtual {v0}, [Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper$LP_STATE;

    return-object v0
.end method
