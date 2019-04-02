.class public Lcom/android/camera/settings/ResetDialogPreference;
.super Landroid/preference/DialogPreference;
.source "ResetDialogPreference.java"

# interfaces
.implements Lcom/android/camera/settings/PreferenceInterface;


# static fields
.field private static final SHARED_PREFS:Ljava/lang/String; = "shared_prefs"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;

.field private static final XML_FILE:Ljava/lang/String; = ".xml"


# instance fields
.field private mSummaryView:Landroid/view/View;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-class v1, Lcom/android/camera/settings/ResetDialogPreference;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/settings/ResetDialogPreference;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/settings/ResetDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/settings/ResetDialogPreference;->mVisible:Z

    .line 30
    return-void
.end method

.method public static resetPreferences(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 59
    .local v6, "startTime":J
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v9, "shared_prefs"

    invoke-direct {v4, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v4, "prefsDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "prefsList":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v8, v5

    if-ge v0, v8, :cond_4

    .line 67
    aget-object v8, v5, v0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    aget-object v8, v5, v0

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    aget-object v8, v5, v0

    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 66
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 69
    :cond_3
    aget-object v8, v5, v0

    const-string v9, ".xml"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "prefName":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-virtual {p0, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 71
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_2

    .line 73
    .end local v2    # "prefName":Ljava/lang/String;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    sget-object v8, Lcom/android/camera/settings/ResetDialogPreference;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resetPreferences KPI:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/camera/debug/Log;->i(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 35
    const v0, 0x1020010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/settings/ResetDialogPreference;->mSummaryView:Landroid/view/View;

    .line 37
    iget-object v1, p0, Lcom/android/camera/settings/ResetDialogPreference;->mSummaryView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/camera/settings/ResetDialogPreference;->mVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 38
    return-void

    .line 37
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/settings/ResetDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/settings/ResetDialogPreference;->resetPreferences(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/camera/settings/ResetDialogPreference;->persistBoolean(Z)Z

    .line 55
    :cond_0
    return-void
.end method

.method public setSummaryVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/android/camera/settings/ResetDialogPreference;->mVisible:Z

    .line 44
    iget-object v0, p0, Lcom/android/camera/settings/ResetDialogPreference;->mSummaryView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/android/camera/settings/ResetDialogPreference;->mSummaryView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
