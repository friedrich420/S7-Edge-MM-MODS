.class Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$ProfileNameVpnEntry;
.super Ljava/lang/Object;
.source "EnterprisePremiumVpnPolicyServiceV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProfileNameVpnEntry"
.end annotation


# instance fields
.field private mDefaultInterface:Ljava/lang/String;

.field private mDnsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInterfaceAddress:Ljava/lang/String;

.field private mInterfaceName:Ljava/lang/String;

.field private mInterfaceV6Address:Ljava/lang/String;

.field private mSearchDomainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVpnStateList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 3834
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3839
    iput-object v0, p0, mInterfaceAddress:Ljava/lang/String;

    .line 3840
    iput-object v0, p0, mDefaultInterface:Ljava/lang/String;

    .line 3841
    iput-object v0, p0, mInterfaceV6Address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultInterface()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3877
    iget-object v0, p0, mDefaultInterface:Ljava/lang/String;

    return-object v0
.end method

.method public getDnsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3859
    iget-object v0, p0, mDnsList:Ljava/util/List;

    return-object v0
.end method

.method public getInterfaceAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3871
    iget-object v0, p0, mInterfaceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3844
    iget-object v0, p0, mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchDomainList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3865
    iget-object v0, p0, mSearchDomainList:Ljava/util/List;

    return-object v0
.end method

.method public getV6InterfaceAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3883
    iget-object v0, p0, mInterfaceV6Address:Ljava/lang/String;

    return-object v0
.end method

.method public getVpnStateList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3850
    iget-object v0, p0, mVpnStateList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setDefaultInterface(Ljava/lang/String;)V
    .registers 2
    .param p1, "defaultInterface"    # Ljava/lang/String;

    .prologue
    .line 3874
    iput-object p1, p0, mDefaultInterface:Ljava/lang/String;

    .line 3875
    return-void
.end method

.method public setDnsList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3856
    .local p1, "dnsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, mDnsList:Ljava/util/List;

    .line 3857
    return-void
.end method

.method public setInterfaceAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 3868
    iput-object p1, p0, mInterfaceAddress:Ljava/lang/String;

    .line 3869
    return-void
.end method

.method public setInterfaceName(Ljava/lang/String;)V
    .registers 2
    .param p1, "interfaceName"    # Ljava/lang/String;

    .prologue
    .line 3847
    iput-object p1, p0, mInterfaceName:Ljava/lang/String;

    .line 3848
    return-void
.end method

.method public setSearchDomainList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3862
    .local p1, "searchDomainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, mSearchDomainList:Ljava/util/List;

    .line 3863
    return-void
.end method

.method public setV6InterfaceAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 3880
    iput-object p1, p0, mInterfaceV6Address:Ljava/lang/String;

    .line 3881
    return-void
.end method

.method public setVpnStateList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3853
    .local p1, "vpnStateList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/vpn/knoxvpn/EnterprisePremiumVpnPolicyServiceV2$VpnState;>;"
    iput-object p1, p0, mVpnStateList:Ljava/util/ArrayList;

    .line 3854
    return-void
.end method
