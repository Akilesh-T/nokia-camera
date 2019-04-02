.class public Lcom/android/camera/settings/ManagedListPreference;
.super Landroid/preference/ListPreference;
.source "ManagedListPreference.java"

# interfaces
.implements Lcom/android/camera/settings/PreferenceInterface;


# instance fields
.field private mSummaryView:Landroid/view/View;

.field private mVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/settings/ManagedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/settings/ManagedListPreference;->mVisible:Z

    .line 21
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onBindView(Landroid/view/View;)V

    .line 26
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/ManagedListPreference;->mSummaryView:Landroid/view/View;

    .line 28
    iget-object v1, p0, Lcom/android/camera/settings/ManagedListPreference;->mSummaryView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/camera/settings/ManagedListPreference;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    return-void

    .line 28
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setSummaryVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/camera/settings/ManagedListPreference;->mVisible:Z

    .line 35
    iget-object v0, p0, Lcom/android/camera/settings/ManagedListPreference;->mSummaryView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/android/camera/settings/ManagedListPreference;->mSummaryView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
