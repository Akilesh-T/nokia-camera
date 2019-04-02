.class public Lcom/android/camera/settings/HDRManagedListPreference;
.super Landroid/preference/ListPreference;
.source "HDRManagedListPreference.java"

# interfaces
.implements Lcom/android/camera/settings/PreferenceInterface;


# instance fields
.field private mEntry:Ljava/lang/String;

.field private mSelectEntry:Landroid/widget/TextView;

.field private mSummaryView:Landroid/view/View;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/settings/HDRManagedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mVisible:Z

    .line 25
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 30
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mSummaryView:Landroid/view/View;

    .line 31
    const v0, 0x7f0f01d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mSelectEntry:Landroid/widget/TextView;

    .line 33
    iget-object v2, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mSummaryView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mVisible:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 34
    iget-object v0, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mSelectEntry:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 35
    iget-object v0, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mSelectEntry:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mEntry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    return-void

    .line 33
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSummaryVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mVisible:Z

    .line 42
    iget-object v0, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mSummaryView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 44
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mSummaryView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public setValueDisplay(Ljava/lang/String;)V
    .locals 2
    .param p1, "entry"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mEntry:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mSelectEntry:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mSelectEntry:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/android/camera/settings/HDRManagedListPreference;->mSelectEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
