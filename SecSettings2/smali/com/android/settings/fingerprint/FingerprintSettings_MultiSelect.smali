.class public Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "FingerprintSettings_MultiSelect.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ENABLE_SURVEY_MODE:Ljava/lang/String;

.field private static mSalesCode:Ljava/lang/String;

.field private static selectedId:I


# instance fields
.field TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

.field private actionBar:Landroid/app/ActionBar;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAllDialog:Landroid/app/AlertDialog;

.field private mDeleteDialog:Landroid/app/AlertDialog;

.field private mEnrolledFingerCount:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mHandler:Landroid/os/Handler;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mRegisterCategory:Landroid/preference/PreferenceCategory;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

.field private mSelectActionView:Landroid/view/View;

.field private mSelectAllCheckbox:Landroid/widget/CheckBox;

.field private mSelectAllText:Landroid/widget/TextView;

.field private mSelectedFingerprintTextView:Landroid/widget/TextView;

.field private originalContentStart:I

.field private selectionChecklist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private twselectedChecklist:[Z

.field private twselectionChecklist:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSalesCode:Ljava/lang/String;

    .line 110
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    .line 134
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 94
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    .line 96
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    .line 97
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    .line 98
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 99
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 100
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllText:Landroid/widget/TextView;

    .line 101
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    .line 107
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    .line 108
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 109
    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    .line 137
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 218
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$4;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    .line 612
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$7;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    return-void
.end method

.method private ToggleAllCheck(Z)V
    .locals 2
    .param p1, "isSelect"    # Z

    .prologue
    .line 1565
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1566
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1569
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    .line 1570
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Landroid/hardware/fingerprint/Fingerprint;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
    .param p1, "x1"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
    .param p1, "x1"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateTwChecklist(I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Lcom/android/settings/fingerprint/FingerPrintRenameDialog;)Lcom/android/settings/fingerprint/FingerPrintRenameDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
    .param p1, "x1"    # Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintOperation(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintSequentially()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finishSelectMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
    .param p1, "x1"    # Z

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ToggleAllCheck(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTwselectionChecklist(ZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->copyTwselectionChecklist()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateTwMultiSelected()V

    return-void
.end method

.method private addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V
    .locals 9
    .param p1, "root"    # Landroid/preference/PreferenceGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 527
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    if-eqz v4, :cond_0

    .line 528
    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 530
    :cond_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 532
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 535
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_2

    .line 536
    move v2, v0

    .line 537
    .local v2, "j":I
    :goto_1
    if-lez v2, :cond_1

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-le v5, v4, :cond_1

    .line 539
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 540
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 541
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 535
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    .end local v2    # "j":I
    :cond_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_3

    .line 546
    const-string v4, "FpstFingerprintSettings_MultiSelect"

    const-string v5, "addFingerprintItemPreferences : Sort Error"

    invoke-static {v4, v5}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iput-object v8, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 548
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    .line 549
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    .line 553
    :cond_3
    const-string v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addFingerprintItemPreferences : mEnrolledFingerCount["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v0, 0x0

    :goto_2
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_4

    .line 556
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 557
    .local v1, "item":Landroid/hardware/fingerprint/Fingerprint;
    const-string v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addFingerprintItemPreferences : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 560
    .end local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    :cond_4
    const/4 v0, 0x0

    :goto_3
    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v4, :cond_6

    .line 561
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    .line 563
    .restart local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finger "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 564
    .local v3, "pref":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-static {v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->genKey(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 568
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 571
    invoke-virtual {v3, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 573
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addCheckedList(Landroid/preference/CheckBoxPreference;)V

    .line 574
    sget v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    if-eq v4, v7, :cond_5

    sget v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    invoke-virtual {v1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 575
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 576
    sput v7, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    .line 560
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 580
    .end local v1    # "item":Landroid/hardware/fingerprint/Fingerprint;
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_6
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    :goto_4
    const/4 v4, 0x4

    if-ge v0, v4, :cond_8

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finger "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 582
    .restart local v3    # "pref":Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_7

    .line 583
    const-string v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFingerList [Select] : Remove CheckBoxPreference, key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v4, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 580
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 587
    .end local v3    # "pref":Landroid/preference/CheckBoxPreference;
    :cond_8
    return-void
.end method

.method private appLockUsingFingerprint()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 962
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "applock_lock_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 963
    .local v0, "appLockType":I
    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    const/4 v2, 0x7

    if-gt v0, v2, :cond_0

    .line 964
    const/4 v1, 0x1

    .line 967
    :cond_0
    return v1
.end method

.method private backToFingerlist()V
    .locals 3

    .prologue
    .line 235
    const-string v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "backToFingerlist stack count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 244
    return-void
.end method

.method private cancelAndSessionEnd()V
    .locals 3

    .prologue
    .line 675
    const-string v1, "FpstFingerprintSettings_MultiSelect"

    const-string v2, "cancelAndSessionEnd() "

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 677
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "reason"

    const-string v2, "cancelsession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 678
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finishFingerprintSettings()V

    .line 680
    return-void
.end method

.method private checkDeleteAllFingerprint()Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 912
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkFingerprintUsageNQuality(Landroid/content/Context;)Z

    move-result v2

    .line 916
    .local v2, "isUsageQuality":Z
    if-nez v2, :cond_0

    .line 950
    :goto_0
    return v3

    .line 920
    :cond_0
    const/4 v1, 0x0

    .line 932
    .local v1, "dialogMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e1211

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    const-string v7, "%s\n%s\n"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e1200

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0b73

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 944
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e1204

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 948
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v3, v4

    .line 950
    goto :goto_0
.end method

.method private checkDeleteSomeFingerprint()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 972
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkFingerprintIndexUsageInPersona(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_0

    move v2, v3

    .line 973
    .local v2, "isKnoxLocked":Z
    :goto_0
    if-nez v2, :cond_1

    .line 985
    :goto_1
    return v3

    .end local v2    # "isKnoxLocked":Z
    :cond_0
    move v2, v4

    .line 972
    goto :goto_0

    .line 977
    .restart local v2    # "isKnoxLocked":Z
    :cond_1
    const v3, 0x7f0e1203

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 979
    .local v1, "dialogMessage":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0e1204

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x104000a

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 983
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    move v3, v4

    .line 985
    goto :goto_1
.end method

.method private checkFingerprintIndexUsageInPersona(Landroid/content/Context;)Z
    .locals 9
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 1524
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v4

    .line 1525
    .local v4, "versionInfo":Landroid/os/Bundle;
    if-eqz v4, :cond_3

    const-string v5, "2.0"

    const-string v7, "version"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1527
    const-string v5, "persona"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersonaManager;

    .line 1529
    .local v2, "personaManager":Landroid/os/PersonaManager;
    if-eqz v2, :cond_2

    .line 1530
    invoke-virtual {v2, v6}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v3

    .line 1532
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_3

    .line 1533
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 1534
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PersonaInfo;

    iget v1, v5, Landroid/content/pm/PersonaInfo;->id:I

    .line 1535
    .local v1, "personaId":I
    invoke-virtual {v2, v1}, Landroid/os/PersonaManager;->isEnabledFingerprintIndex(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1536
    invoke-direct {p0, p1, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isSelectedWholeFingersUsedKnox(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1537
    const-string v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "whole finger set using in KNOX was selected! PersonaId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    const/4 v5, 0x1

    .line 1554
    .end local v0    # "k":I
    .end local v1    # "personaId":I
    .end local v2    # "personaManager":Landroid/os/PersonaManager;
    .end local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :goto_1
    return v5

    .line 1542
    .restart local v0    # "k":I
    .restart local v1    # "personaId":I
    .restart local v2    # "personaManager":Landroid/os/PersonaManager;
    .restart local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_0
    const-string v5, "FpstFingerprintSettings_MultiSelect"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PersonaId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " doesn\'t use fingerprint index."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1548
    .end local v0    # "k":I
    .end local v1    # "personaId":I
    .end local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_2
    const-string v5, "FpstFingerprintSettings_MultiSelect"

    const-string v7, "checkFingerprintIndexUsageInPersona: Unable to access PersonaManager."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    .end local v2    # "personaManager":Landroid/os/PersonaManager;
    :cond_3
    const-string v5, "FpstFingerprintSettings_MultiSelect"

    const-string v7, "checkFingerprintIndexUsageInPersona: Any persona doesn\'t use fingerprint index."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 1554
    goto :goto_1
.end method

.method private checkFingerprintUsageNQuality(Landroid/content/Context;)Z
    .locals 6
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1286
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1287
    .local v1, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v5, "device_policy"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    .line 1288
    .local v2, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintLockscreenState(I)I

    move-result v0

    .line 1295
    .local v0, "fingerLockEnabledType":I
    if-eq v0, v4, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return v3

    .line 1299
    :cond_1
    if-eqz v2, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v5

    if-lez v5, :cond_0

    .line 1300
    const-string v3, "FpstFingerprintSettings_MultiSelect"

    const-string v5, "checkFingerprintUsageNQuality : Unable to delete Fingerprint due to DPM"

    invoke-static {v3, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1301
    goto :goto_0
.end method

.method private checkFinishDeleteOperation(Landroid/hardware/fingerprint/Fingerprint;)Z
    .locals 6
    .param p1, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 162
    const/4 v2, 0x0

    .line 163
    .local v2, "remainingNum":I
    const/4 v0, -0x1

    .line 165
    .local v0, "deletedIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 168
    move v0, v1

    .line 165
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 171
    const-string v3, "FpstFingerprintSettings_MultiSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkFinishDeleteOperation remainingNum index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", remainingNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 176
    :cond_2
    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 178
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 179
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 182
    :cond_3
    if-nez v2, :cond_4

    .line 183
    const/4 v3, 0x1

    .line 185
    :goto_2
    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private clearselectionChecklist()V
    .locals 3

    .prologue
    .line 1649
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1650
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1649
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1652
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1653
    return-void
.end method

.method private copyTwselectionChecklist()V
    .locals 3

    .prologue
    .line 653
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v1, :cond_0

    .line 654
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    aput-boolean v1, v2, v0

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_0
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 2

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 501
    .local v0, "root":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 504
    :cond_0
    const v1, 0x7f080054

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addPreferencesFromResource(I)V

    .line 506
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setFingerprintPreference()V

    .line 507
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->addFingerprintItemPreferences(Landroid/preference/PreferenceGroup;)V

    .line 518
    return-object v0
.end method

.method private deleteAllFingerPrint()V
    .locals 12

    .prologue
    const v11, 0x7f0e1202

    const v10, 0x7f0e1201

    const/high16 v9, 0x1040000

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 991
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v2

    .line 993
    .local v2, "selectedCount":I
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 994
    .local v0, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    .line 995
    .local v1, "quality":I
    const-string v4, "FpstFingerprintSettings_MultiSelect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAllFingerPrint : selectedCount "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintLockscreenState(I)I

    move-result v4

    if-ne v4, v7, :cond_8

    .line 1000
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFingerprintSupportingFeatures()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1001
    if-ne v2, v7, :cond_2

    .line 1002
    sget-object v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSalesCode:Ljava/lang/String;

    const-string v5, "DCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1003
    const v4, 0x7f0e11fc

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1037
    .local v3, "strMessage":Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$13;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$12;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$12;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    .line 1065
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1066
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1068
    :cond_0
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1132
    :goto_1
    return-void

    .line 1005
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_1
    const v4, 0x7f0e11f6

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "strMessage":Ljava/lang/String;
    goto :goto_0

    .line 1008
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_2
    sget-object v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSalesCode:Ljava/lang/String;

    const-string v5, "DCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1009
    const v4, 0x7f0e11fd

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "strMessage":Ljava/lang/String;
    goto :goto_0

    .line 1013
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_3
    const v4, 0x7f0e11f7

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "strMessage":Ljava/lang/String;
    goto :goto_0

    .line 1019
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_4
    if-ne v2, v7, :cond_6

    .line 1020
    sget-object v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSalesCode:Ljava/lang/String;

    const-string v5, "DCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1021
    const v4, 0x7f0e11fa

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "strMessage":Ljava/lang/String;
    goto :goto_0

    .line 1023
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_5
    const v4, 0x7f0e11f8

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "strMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 1026
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_6
    sget-object v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSalesCode:Ljava/lang/String;

    const-string v5, "DCM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1027
    const v4, 0x7f0e11fb

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "strMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 1031
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_7
    const v4, 0x7f0e11f9

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "strMessage":Ljava/lang/String;
    goto/16 :goto_0

    .line 1069
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFingerprintSupportingFeatures()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintLockscreenState(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 1071
    :cond_9
    if-ne v2, v7, :cond_b

    .line 1072
    const v4, 0x7f0e11f4

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1076
    .restart local v3    # "strMessage":Ljava/lang/String;
    :goto_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$15;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$15;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$14;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$14;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    .line 1095
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1096
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1098
    :cond_a
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 1074
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_b
    const v4, 0x7f0e11f5

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "strMessage":Ljava/lang/String;
    goto :goto_2

    .line 1101
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_c
    if-ne v2, v7, :cond_e

    .line 1102
    const v4, 0x7f0e11f2

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1108
    .restart local v3    # "strMessage":Ljava/lang/String;
    :goto_3
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$17;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$17;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v10, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$16;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$16;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    .line 1127
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1128
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, v11}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 1130
    :cond_d
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 1104
    .end local v3    # "strMessage":Ljava/lang/String;
    :cond_e
    const v4, 0x7f0e11f3

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "strMessage":Ljava/lang/String;
    goto :goto_3
.end method

.method private deleteFingerprintOperation(Z)Z
    .locals 1
    .param p1, "isResetFeature"    # Z

    .prologue
    .line 1136
    const/4 v0, 0x1

    .line 1138
    .local v0, "result":Z
    if-eqz p1, :cond_0

    .line 1139
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->resetFingerprintSupportingFeatures()V

    .line 1147
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprintSequentially()V

    .line 1165
    return v0
.end method

.method private deleteFingerprintSequentially()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1212
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 1225
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1217
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1219
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 1220
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    const-string v2, "FpstFingerprintSettings_MultiSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFingerprintSequencially delete index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_0

    .line 1216
    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private finishSelectMode()V
    .locals 0

    .prologue
    .line 1644
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->clearselectionChecklist()V

    .line 1645
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->backToFingerlist()V

    .line 1646
    return-void
.end method

.method private static genKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "id"    # I

    .prologue
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_fingerprint_item_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFingerprintSupportingFeatures()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1268
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_secret_box"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_webpass"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_samsungaccount_confirmed"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "personal_mode_lock_type"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->appLockUsingFingerprint()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 1281
    :cond_1
    return v0
.end method

.method private getNumOfCheckedList()I
    .locals 4

    .prologue
    .line 1573
    const/4 v2, 0x0

    .line 1575
    .local v2, "numChecked":I
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 1577
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 1578
    .local v0, "c":Landroid/preference/CheckBoxPreference;
    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1579
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1584
    .end local v0    # "c":Landroid/preference/CheckBoxPreference;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return v2
.end method

.method private isSelectedWholeFingersUsedKnox(Landroid/content/Context;I)Z
    .locals 11
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "personaId"    # I

    .prologue
    const/4 v8, 0x0

    .line 1471
    const-string v7, "persona"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PersonaManager;

    .line 1473
    .local v5, "personaManager":Landroid/os/PersonaManager;
    if-nez v5, :cond_0

    .line 1474
    const-string v7, "FpstFingerprintSettings_MultiSelect"

    const-string v9, "isSelectedWholeFingersUsedKnox: Unable to access PersonaManager."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 1519
    :goto_0
    return v7

    .line 1477
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v6

    .line 1478
    .local v6, "selectedCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1480
    .local v2, "indexToBeRemoved":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    if-lez v6, :cond_1

    .line 1493
    :cond_1
    const/4 v4, 0x0

    .line 1494
    .local v4, "matchedCount":I
    invoke-virtual {v5, p2}, Landroid/os/PersonaManager;->getFingerprintIndex(I)[I

    move-result-object v0

    .line 1495
    .local v0, "fingerIndex":[I
    if-nez v0, :cond_2

    .line 1496
    const-string v7, "FpstFingerprintSettings_MultiSelect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "fingerIndexList cannot be null for PersonaId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 1497
    goto :goto_0

    .line 1499
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v0

    if-ge v1, v7, :cond_5

    .line 1500
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    .line 1501
    aget v9, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v9, v7, :cond_4

    .line 1502
    add-int/lit8 v4, v4, 0x1

    .line 1499
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1500
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1510
    .end local v3    # "j":I
    :cond_5
    array-length v7, v0

    if-ne v7, v4, :cond_6

    .line 1514
    const/4 v7, 0x1

    goto :goto_0

    :cond_6
    move v7, v8

    .line 1519
    goto :goto_0
.end method

.method private isSharedDeviceEnabled()Z
    .locals 5

    .prologue
    .line 1658
    const/4 v1, 0x0

    .line 1659
    .local v1, "isSharedDevice":Z
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1660
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 1661
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSharedDevicePolicy()Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/shareddevice/EnterpriseSharedDevicePolicy;->isSharedDeviceEnabled()Z

    move-result v1

    .line 1663
    const-string v2, "FpstFingerprintSettings_MultiSelect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Checking shared device Enabled, isSharedDevice: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_0
    return v1
.end method

.method private removeFingerPrint(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 3
    .param p1, "fingerPrint"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 742
    const-string v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteFingerPrint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getGroupId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, v1}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 744
    return-void
.end method

.method private resetFingerprintSupportingFeatures()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1229
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_secret_box"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1231
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_webpass"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1233
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_fingerIndex"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1235
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_samsungaccount_confirmed"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1237
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setFingerprintScreenLockDisable()V

    .line 1239
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_lock_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1241
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "personal_mode_lock_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1244
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "applock_lock_type"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1246
    .local v0, "appLockType":I
    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v1, 0x7

    if-gt v0, v1, :cond_1

    .line 1247
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "applock_lock_type"

    add-int/lit8 v3, v0, -0x4

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1250
    :cond_1
    return-void
.end method

.method private setContentsStart(Z)V
    .locals 3
    .param p1, "isSet"    # Z

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020470

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 450
    .local v0, "mToolbar":Landroid/widget/Toolbar;
    if-eqz v0, :cond_2

    .line 451
    if-eqz p1, :cond_1

    .line 452
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetStart()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    .line 453
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->convertDpToPixel(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 456
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->originalContentStart:I

    invoke-virtual {v0}, Landroid/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/Toolbar;->setContentInsetsRelative(II)V

    goto :goto_0

    .line 460
    :cond_2
    const-string v1, "FpstFingerprintSettings_MultiSelect"

    const-string v2, "onCreateView mToolbar Null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setFingerprintPreference()V
    .locals 1

    .prologue
    .line 1639
    const-string v0, "register_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRegisterCategory:Landroid/preference/PreferenceCategory;

    .line 1641
    return-void
.end method

.method private setFingerprintScreenLockDisable()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1253
    const-string v2, "FpstFingerprintSettings_MultiSelect"

    const-string v3, "setFingerprintScreenLockDisable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 1256
    .local v1, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintLockscreenState(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1257
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 1258
    .local v0, "chooseLockSettingsHelper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 1259
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 1262
    .end local v0    # "chooseLockSettingsHelper":Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    .line 1263
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fingerprint_screen_lock"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1264
    return-void
.end method

.method private setTwselectionChecklist(ZI)V
    .locals 4
    .param p1, "val"    # Z
    .param p2, "position"    # I

    .prologue
    .line 658
    if-gez p2, :cond_0

    .line 659
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/settings/fingerprint/FingerprintSettings_Utils;->getMaxFingerEnroll()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 660
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aput-boolean p1, v1, v0

    .line 659
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 662
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge p2, v1, :cond_3

    .line 663
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aget-boolean v1, v1, p2

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    aput-boolean v1, v2, p2

    .line 667
    :cond_1
    :goto_2
    return-void

    .line 663
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 665
    :cond_3
    const-string v1, "FpstFingerprintSettings_MultiSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTwselectionChecklist, postion error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private showSensorErrorDialog()V
    .locals 6

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 191
    .local v0, "activity":Landroid/app/Activity;
    const v2, 0x7f0e11e2

    .line 193
    .local v2, "stringID":I
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const v2, 0x7f0e11e3

    .line 197
    :cond_0
    if-eqz v0, :cond_1

    .line 198
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e11e0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$3;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$2;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 213
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 216
    .end local v1    # "dialog":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 215
    :cond_1
    const-string v3, "FpstFingerprintSettings_MultiSelect"

    const-string v4, "Activity is null. Skip SensorErrorDialog"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updatePreferences()V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 672
    return-void
.end method

.method private updateTwChecklist(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 645
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge p1, v0, :cond_0

    .line 646
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setTwselectionChecklist(ZI)V

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    const-string v0, "FpstFingerprintSettings_MultiSelect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateTwMultiSelected : postion error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateTwMultiSelected()V
    .locals 3

    .prologue
    .line 638
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v1, :cond_0

    .line 639
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectionChecklist:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 638
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 641
    :cond_0
    return-void
.end method


# virtual methods
.method public addCheckedList(Landroid/preference/CheckBoxPreference;)V
    .locals 1
    .param p1, "p"    # Landroid/preference/CheckBoxPreference;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    return-void
.end method

.method public deleteFingerprint()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 840
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v6, :cond_2

    :cond_0
    move v4, v5

    .line 906
    :cond_1
    :goto_0
    return v4

    .line 843
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v2

    .line 845
    .local v2, "selectedCount":I
    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v2, v6, :cond_4

    .line 847
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 848
    .local v1, "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->isSharedDeviceEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/internal/widget/LockPatternUtils;->getFingerPrintLockscreenState(I)I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 849
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x1040b37

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 855
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkDeleteAllFingerprint()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 856
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteAllFingerPrint()V

    goto :goto_0

    .line 862
    .end local v1    # "mLockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->checkDeleteSomeFingerprint()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 867
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 868
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 869
    const v6, 0x7f0e1202

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 872
    :cond_5
    if-ne v2, v4, :cond_6

    .line 873
    const v5, 0x7f0e11f2

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 879
    .local v3, "tempStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 880
    const v5, 0x7f0e1201

    new-instance v6, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$9;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$9;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 889
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$10;

    invoke-direct {v6, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$10;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 897
    new-instance v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$11;

    invoke-direct {v5, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$11;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 903
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    .line 904
    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 875
    .end local v3    # "tempStr":Ljava/lang/String;
    :cond_6
    const v6, 0x7f0e11f3

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "tempStr":Ljava/lang/String;
    goto :goto_1
.end method

.method protected finishFingerprintSettings()V
    .locals 2

    .prologue
    .line 684
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 685
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 687
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->close()V

    .line 690
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 691
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 700
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->cancelRenameDialog()V

    .line 704
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 705
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 708
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 709
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 711
    :cond_4
    return-void

    .line 692
    :cond_5
    sget-boolean v0, Lcom/android/settings/fingerprint/FingerprintEntry;->isSearchEntry:Z

    if-eqz v0, :cond_1

    .line 693
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->finishFragment()V

    goto :goto_0

    .line 697
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 731
    const v0, 0x7f0e0d82

    return v0
.end method

.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 275
    const/16 v0, 0x31

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 117
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c029b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 119
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .end local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 121
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    .restart local v0    # "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c029a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 280
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 281
    const-string v3, "FpstFingerprintSettings_MultiSelect"

    const-string v4, "onCreate"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 284
    .local v2, "i":Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 285
    const-string v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 286
    const-string v3, ":settings:show_fragment_args"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 287
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v3, "selected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 288
    const-string v3, "selected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    .line 289
    const-string v3, "FpstFingerprintSettings_MultiSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate selectedIndex: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectedId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "twmultiselected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 293
    const-string v3, "twmultiselected_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    .line 294
    const-string v3, "FpstFingerprintSettings_MultiSelect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate twselectedChecklist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 300
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "fingerprint"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 302
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    .line 303
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setHasOptionsMenu(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    .line 306
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updatePreferences()V

    .line 307
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v6, 0x10

    const/4 v7, 0x0

    .line 311
    const-string v3, "FpstFingerprintSettings_MultiSelect"

    const-string v4, "onCreateOptionsMenu"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 314
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    .line 315
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3}, Landroid/view/Menu;->clear()V

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400e7

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectActionView:Landroid/view/View;

    .line 318
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    if-eqz v3, :cond_2

    .line 319
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 320
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectActionView:Landroid/view/View;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v8, v8, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 321
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 322
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->actionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v7}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 324
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectActionView:Landroid/view/View;

    const v4, 0x7f0d02bd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllText:Landroid/widget/TextView;

    .line 325
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllText:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$5;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$5;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectActionView:Landroid/view/View;

    const v4, 0x7f0d02bc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    .line 333
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$6;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectActionView:Landroid/view/View;

    const v4, 0x7f0d02be

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    .line 341
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectActionView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/Toolbar;

    .line 342
    .local v2, "parentActionbar":Landroid/widget/Toolbar;
    if-eqz v2, :cond_0

    .line 343
    invoke-virtual {v2, v7, v7}, Landroid/widget/Toolbar;->setContentInsetsAbsolute(II)V

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 346
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 347
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c029b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v6, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 348
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "parentActionbar":Landroid/widget/Toolbar;
    :cond_1
    :goto_0
    const/4 v3, 0x3

    const v4, 0x7f0e0123

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 355
    const/4 v3, 0x4

    const v4, 0x7f0e1201

    invoke-interface {p1, v7, v3, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 358
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    if-eqz v3, :cond_3

    .line 359
    const-string v3, "FpstFingerprintSettings_MultiSelect"

    const-string v4, "onCreateOptionsMenu : twselectedChecklist is not null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mEnrolledFingerCount:I

    if-ge v0, v3, :cond_3

    .line 362
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->twselectedChecklist:[Z

    aget-boolean v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    .end local v0    # "i":I
    :cond_2
    const-string v3, "FpstFingerprintSettings_MultiSelect"

    const-string v4, "updateSelectMenu null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    .line 367
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 736
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setContentsStart(Z)V

    .line 738
    const-string v0, "FpstFingerprintSettings_MultiSelect"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 372
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 380
    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0

    .line 374
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->renameFingerPrint()V

    .line 382
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 377
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->deleteFingerprint()Z

    goto :goto_1

    .line 372
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 715
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 716
    const-string v0, "FpstFingerprintSettings_MultiSelect"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->cancelAndSessionEnd()V

    .line 719
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 1671
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateSelectionState()V

    .line 725
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 599
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 600
    const-string v1, "FpstFingerprintSettings_MultiSelect"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 607
    .local v0, "mlistView":Landroid/widget/ListView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnableDragBlock(Z)V

    .line 608
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->TwFingerprintultiSelectedListener:Landroid/widget/AdapterView$OnTwMultiSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTwMultiSelectedListener(Landroid/widget/AdapterView$OnTwMultiSelectedListener;)V

    .line 609
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 439
    const-string v0, "FpstFingerprintSettings_MultiSelect"

    const-string v1, "onViewCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setContentsStart(Z)V

    .line 443
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->setDivider()V

    .line 445
    return-void
.end method

.method public renameFingerPrint()V
    .locals 5

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 758
    .local v0, "fp":Landroid/hardware/fingerprint/Fingerprint;
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteAllDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mDeleteDialog:Landroid/app/AlertDialog;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    if-eqz v2, :cond_1

    .line 815
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 762
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 763
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 772
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    .line 762
    .restart local v0    # "fp":Landroid/hardware/fingerprint/Fingerprint;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 777
    .end local v1    # "i":I
    :cond_3
    if-eqz v0, :cond_0

    .line 781
    new-instance v2, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;-><init>(ILjava/lang/CharSequence;)V

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    .line 782
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect$8;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->setConfirmationDialogFragmentListener(Lcom/android/settings/fingerprint/FingerPrintRenameDialog$ConfirmationDialogFragmentListener;)V

    .line 812
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mRenameDialog:Lcom/android/settings/fingerprint/FingerPrintRenameDialog;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/fingerprint/FingerPrintRenameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 814
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->sendSurveyForRename()V

    goto :goto_0
.end method

.method protected sendSurveyForRename()V
    .locals 4

    .prologue
    .line 819
    const-string v2, "TRUE"

    sget-object v3, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->ENABLE_SURVEY_MODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 821
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v2, "feature"

    const-string v3, "FPRN"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 828
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 831
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 833
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 835
    const-string v2, "FpstFingerprintSettings_MultiSelect"

    const-string v3, "renameFingerPrint sendSurveyLog - appId : com.samsung.android.fingerprint.service, Feature : FPRN, extra : null, value : null"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    .end local v0    # "broadcastIntent":Landroid/content/Intent;
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method public setDivider()V
    .locals 9

    .prologue
    const v4, 0x7f0c0273

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 465
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 466
    .local v7, "l":Ljava/util/Locale;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v8

    .line 468
    .local v8, "listView":Landroid/widget/ListView;
    invoke-static {v7}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v6, :cond_1

    .line 471
    .local v6, "isRtl":Z
    :goto_0
    if-nez v6, :cond_2

    .line 472
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 476
    .local v0, "insetdividerSelect":Landroid/graphics/drawable/InsetDrawable;
    :goto_1
    if-eqz v8, :cond_0

    .line 477
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 479
    :cond_0
    return-void

    .end local v0    # "insetdividerSelect":Landroid/graphics/drawable/InsetDrawable;
    .end local v6    # "isRtl":Z
    :cond_1
    move v6, v3

    .line 468
    goto :goto_0

    .line 474
    .restart local v6    # "isRtl":Z
    :cond_2
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move v2, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .restart local v0    # "insetdividerSelect":Landroid/graphics/drawable/InsetDrawable;
    goto :goto_1
.end method

.method public updateActionbarState()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 387
    const/4 v0, 0x0

    .line 389
    .local v0, "numChecked":I
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getNumOfCheckedList()I

    move-result v0

    .line 391
    const-string v1, "FpstFingerprintSettings_MultiSelect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateActionbarState checked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-lez v0, :cond_1

    .line 394
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0f78

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->selectionChecklist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 405
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 410
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 434
    :goto_2
    return-void

    .line 397
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0e1233

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 401
    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectedFingerprintTextView:Landroid/widget/TextView;

    const v2, 0x7f0e1232

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 407
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mSelectAllCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 412
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 413
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 414
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 415
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 418
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 419
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 420
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 421
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 426
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 427
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 428
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 429
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 410
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public updateSelectionState()V
    .locals 0

    .prologue
    .line 1560
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings_MultiSelect;->updateActionbarState()V

    .line 1561
    return-void
.end method
