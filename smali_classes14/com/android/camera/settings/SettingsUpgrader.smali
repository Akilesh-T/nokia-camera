.class public abstract Lcom/android/camera/settings/SettingsUpgrader;
.super Ljava/lang/Object;
.source "SettingsUpgrader.java"


# static fields
.field protected static final OLD_SETTINGS_VALUE_AUTO:Ljava/lang/String; = "auto"

.field protected static final OLD_SETTINGS_VALUE_NONE:Ljava/lang/String; = "none"

.field protected static final OLD_SETTINGS_VALUE_OFF:Ljava/lang/String; = "off"

.field protected static final OLD_SETTINGS_VALUE_ON:Ljava/lang/String; = "on"

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final mTargetVersion:I

.field private final mVersionKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "SettingsUpgrader"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/settings/SettingsUpgrader;->TAG:Lcom/android/camera/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "versionKey"    # Ljava/lang/String;
    .param p2, "targetVersion"    # I

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/android/camera/settings/SettingsUpgrader;->mVersionKey:Ljava/lang/String;

    .line 45
    iput p2, p0, Lcom/android/camera/settings/SettingsUpgrader;->mTargetVersion:I

    .line 46
    return-void
.end method


# virtual methods
.method protected getLastVersion(Lcom/android/camera/settings/SettingsManager;)I
    .locals 2
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 80
    const-string v0, "default_scope"

    iget-object v1, p0, Lcom/android/camera/settings/SettingsUpgrader;->mVersionKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/settings/SettingsManager;->getInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected removeBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;)Z
    .locals 4
    .param p1, "oldPreferencesLocation"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v1, 0x0

    .line 94
    .local v1, "value":Z
    :try_start_0
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 98
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    return v1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v2, Lcom/android/camera/settings/SettingsUpgrader;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "error reading old value, removing and returning default"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected removeInteger(Landroid/content/SharedPreferences;Ljava/lang/String;)I
    .locals 4
    .param p1, "oldPreferencesLocation"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 111
    const/4 v1, 0x0

    .line 113
    .local v1, "value":I
    :try_start_0
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 117
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 118
    return v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v2, Lcom/android/camera/settings/SettingsUpgrader;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "error reading old value, removing and returning default"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected removeString(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "oldPreferencesLocation"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, "value":Ljava/lang/String;
    :try_start_0
    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 136
    :goto_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v2, Lcom/android/camera/settings/SettingsUpgrader;->TAG:Lcom/android/camera/debug/Log$Tag;

    const-string v3, "error reading old value, removing and returning default"

    invoke-static {v2, v3, v0}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public upgrade(Lcom/android/camera/settings/SettingsManager;)V
    .locals 4
    .param p1, "settingsManager"    # Lcom/android/camera/settings/SettingsManager;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/camera/settings/SettingsUpgrader;->getLastVersion(Lcom/android/camera/settings/SettingsManager;)I

    move-result v0

    .line 54
    .local v0, "lastVersion":I
    iget v1, p0, Lcom/android/camera/settings/SettingsUpgrader;->mTargetVersion:I

    if-eq v0, v1, :cond_0

    .line 55
    iget v1, p0, Lcom/android/camera/settings/SettingsUpgrader;->mTargetVersion:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/camera/settings/SettingsUpgrader;->upgrade(Lcom/android/camera/settings/SettingsManager;II)V

    .line 57
    :cond_0
    const-string v1, "default_scope"

    iget-object v2, p0, Lcom/android/camera/settings/SettingsUpgrader;->mVersionKey:Ljava/lang/String;

    iget v3, p0, Lcom/android/camera/settings/SettingsUpgrader;->mTargetVersion:I

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/camera/settings/SettingsManager;->set(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method protected abstract upgrade(Lcom/android/camera/settings/SettingsManager;II)V
.end method
