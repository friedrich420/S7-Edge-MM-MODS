.class public Lcom/android/server/am/MARsDBManager$SMDBValue;
.super Ljava/lang/Object;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SMDBValue"
.end annotation


# instance fields
.field public strAutoRun:Ljava/lang/String;

.field public strExtras:Ljava/lang/String;

.field public strIsSMFreezed:Ljava/lang/String;

.field public strPkgName:Ljava/lang/String;

.field public strPkgType:Ljava/lang/String;

.field public strResetTime:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;)V
    .registers 2

    .prologue
    .line 176
    iput-object p1, p0, this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V
    .registers 3
    .param p2, "_strPkgName"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p2, p0, strPkgName:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p2, "_strPkgName"    # Ljava/lang/String;
    .param p3, "_strResetTime"    # Ljava/lang/String;
    .param p4, "_strExtras"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p2, p0, strPkgName:Ljava/lang/String;

    .line 185
    iput-object p3, p0, strResetTime:Ljava/lang/String;

    .line 186
    iput-object p4, p0, strExtras:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p2, "_strPkgName"    # Ljava/lang/String;
    .param p3, "_strIsSMFreezed"    # Ljava/lang/String;
    .param p4, "_strResetTime"    # Ljava/lang/String;
    .param p5, "_strExtras"    # Ljava/lang/String;
    .param p6, "_strAutoRun"    # Ljava/lang/String;

    .prologue
    .line 189
    iput-object p1, p0, this$0:Lcom/android/server/am/MARsDBManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p2, p0, strPkgName:Ljava/lang/String;

    .line 191
    iput-object p3, p0, strIsSMFreezed:Ljava/lang/String;

    .line 192
    iput-object p4, p0, strResetTime:Ljava/lang/String;

    .line 193
    iput-object p5, p0, strExtras:Ljava/lang/String;

    .line 194
    iput-object p6, p0, strAutoRun:Ljava/lang/String;

    .line 195
    return-void
.end method
