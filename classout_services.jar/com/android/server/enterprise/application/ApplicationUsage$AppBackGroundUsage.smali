.class Lcom/android/server/enterprise/application/ApplicationUsage$AppBackGroundUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppBackGroundUsage"
.end annotation


# instance fields
.field appLastServiceStartTime:J

.field appLastServiceStopTime:J


# direct methods
.method private constructor <init>()V
    .registers 3

    .prologue
    const-wide/16 v0, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-wide v0, p0, appLastServiceStartTime:J

    .line 144
    iput-wide v0, p0, appLastServiceStopTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationUsage$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/enterprise/application/ApplicationUsage$1;

    .prologue
    .line 142
    invoke-direct {p0}, <init>()V

    return-void
.end method
