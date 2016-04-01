.class public Landroid/service/notification/ZenModeConfig$EventInfo;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation


# static fields
.field public static final REPLY_ANY_EXCEPT_NO:I = 0x0

.field public static final REPLY_YES:I = 0x2

.field public static final REPLY_YES_OR_MAYBE:I = 0x1


# instance fields
.field public calendar:Ljava/lang/String;

.field public reply:I

.field public userId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 922
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 927
    const/16 v0, -0x2710

    iput v0, p0, userId:I

    return-void
.end method

.method public static resolveUserId(I)I
    .registers 2
    .param p0, "userId"    # I

    .prologue
    .line 954
    const/16 v0, -0x2710

    if-ne p0, v0, :cond_8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    .end local p0    # "userId":I
    :cond_8
    return p0
.end method


# virtual methods
.method public copy()Landroid/service/notification/ZenModeConfig$EventInfo;
    .registers 3

    .prologue
    .line 946
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v0}, <init>()V

    .line 947
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$EventInfo;
    iget v1, p0, userId:I

    iput v1, v0, userId:I

    .line 948
    iget-object v1, p0, calendar:Ljava/lang/String;

    iput-object v1, v0, calendar:Ljava/lang/String;

    .line 949
    iget v1, p0, reply:I

    iput v1, v0, reply:I

    .line 950
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 938
    instance-of v2, p1, Landroid/service/notification/ZenModeConfig$EventInfo;

    if-nez v2, :cond_6

    .line 940
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 939
    check-cast v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 940
    .local v0, "other":Landroid/service/notification/ZenModeConfig$EventInfo;
    iget v2, p0, userId:I

    iget v3, v0, userId:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, calendar:Ljava/lang/String;

    iget-object v3, v0, calendar:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, reply:I

    iget v3, v0, reply:I

    if-ne v2, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 933
    const/4 v0, 0x0

    return v0
.end method
