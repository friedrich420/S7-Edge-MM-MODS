.class public Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;
.super Landroid/preference/Preference;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FingerprintPreference"
.end annotation


# instance fields
.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1942
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1943
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1938
    const v0, 0x101008e

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1939
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I

    .prologue
    .line 1934
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1935
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/fingerprint/FingerprintSettings;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 1929
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->this$0:Lcom/android/settings/fingerprint/FingerprintSettings;

    .line 1930
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1931
    return-void
.end method


# virtual methods
.method public getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1959
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 1960
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mView:Landroid/view/View;

    .line 1961
    return-void
.end method

.method public setFingerprint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 0
    .param p1, "item"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 1950
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintPreference;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 1951
    return-void
.end method
