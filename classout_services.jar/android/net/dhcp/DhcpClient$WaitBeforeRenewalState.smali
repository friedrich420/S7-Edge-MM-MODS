.class Landroid/net/dhcp/DhcpClient$WaitBeforeRenewalState;
.super Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;
.source "DhcpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/dhcp/DhcpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitBeforeRenewalState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/dhcp/DhcpClient;


# direct methods
.method public constructor <init>(Landroid/net/dhcp/DhcpClient;Lcom/android/internal/util/State;)V
    .registers 3
    .param p2, "otherState"    # Lcom/android/internal/util/State;

    .prologue
    .line 599
    iput-object p1, p0, this$0:Landroid/net/dhcp/DhcpClient;

    .line 600
    invoke-direct {p0, p1}, Landroid/net/dhcp/DhcpClient$WaitBeforeOtherState;-><init>(Landroid/net/dhcp/DhcpClient;)V

    .line 601
    iput-object p2, p0, mOtherState:Lcom/android/internal/util/State;

    .line 602
    return-void
.end method
