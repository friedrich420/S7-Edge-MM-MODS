.class Lcom/android/server/pm/SELinuxMMAC$ContainerInfo;
.super Ljava/lang/Object;
.source "SELinuxMMAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SELinuxMMAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContainerInfo"
.end annotation


# instance fields
.field accessInfo:I

.field allowCategory:Ljava/lang/String;

.field allowContainerCategory:Ljava/lang/String;

.field bbcallowCategory:Ljava/lang/String;

.field bbccategory:I

.field bbcseInfo:Ljava/lang/String;

.field bluetoothuserid:Ljava/lang/String;

.field bluetoothuseridBL:Ljava/lang/String;

.field category:I

.field destPkgName:[Ljava/lang/String;

.field sdcarduserid:Ljava/lang/String;

.field sdcarduseridBL:Ljava/lang/String;

.field seInfo:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iput v1, p0, category:I

    .line 200
    iput v1, p0, bbccategory:I

    .line 201
    iput-object v0, p0, allowCategory:Ljava/lang/String;

    .line 202
    iput-object v0, p0, bbcallowCategory:Ljava/lang/String;

    .line 203
    iput-object v0, p0, seInfo:Ljava/lang/String;

    .line 204
    iput-object v0, p0, bbcseInfo:Ljava/lang/String;

    .line 205
    iput-object v0, p0, allowContainerCategory:Ljava/lang/String;

    .line 206
    iput v1, p0, accessInfo:I

    .line 207
    iput-object v0, p0, sdcarduserid:Ljava/lang/String;

    .line 208
    iput-object v0, p0, bluetoothuserid:Ljava/lang/String;

    .line 209
    iput-object v0, p0, sdcarduseridBL:Ljava/lang/String;

    .line 210
    iput-object v0, p0, bluetoothuseridBL:Ljava/lang/String;

    .line 211
    iput-object v0, p0, destPkgName:[Ljava/lang/String;

    .line 212
    return-void
.end method
