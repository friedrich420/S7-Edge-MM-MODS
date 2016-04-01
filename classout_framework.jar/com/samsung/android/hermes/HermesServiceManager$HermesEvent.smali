.class public Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;
.super Ljava/lang/Object;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/HermesServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HermesEvent"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private endTime:J

.field private location:Ljava/lang/String;

.field private startTime:J

.field final synthetic this$0:Lcom/samsung/android/hermes/HermesServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "location"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1014
    iput-object p1, p0, this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1005
    iput-wide v2, p0, startTime:J

    .line 1007
    iput-wide v2, p0, endTime:J

    .line 1009
    iput-object v0, p0, location:Ljava/lang/String;

    .line 1011
    iput-object v0, p0, description:Ljava/lang/String;

    .line 1016
    iput-wide p2, p0, startTime:J

    .line 1017
    iput-wide p4, p0, endTime:J

    .line 1018
    iput-object p6, p0, location:Ljava/lang/String;

    .line 1019
    iput-object p7, p0, description:Ljava/lang/String;

    .line 1020
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1055
    iget-object v0, p0, description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .registers 3

    .prologue
    .line 1037
    iget-wide v0, p0, endTime:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1046
    iget-object v0, p0, location:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 1028
    iget-wide v0, p0, startTime:J

    return-wide v0
.end method
