.class Lcom/facebook/UserSettingsManager$UserSetting;
.super Ljava/lang/Object;
.source "UserSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/UserSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserSetting"
.end annotation


# instance fields
.field defaultVal:Z

.field keyInCache:Ljava/lang/String;

.field keyInManifest:Ljava/lang/String;

.field lastTS:J

.field value:Ljava/lang/Boolean;


# direct methods
.method constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultVal"    # Z
    .param p2, "keyInCache"    # Ljava/lang/String;
    .param p3, "keyInManifest"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-boolean p1, p0, Lcom/facebook/UserSettingsManager$UserSetting;->defaultVal:Z

    .line 258
    iput-object p2, p0, Lcom/facebook/UserSettingsManager$UserSetting;->keyInCache:Ljava/lang/String;

    .line 259
    iput-object p3, p0, Lcom/facebook/UserSettingsManager$UserSetting;->keyInManifest:Ljava/lang/String;

    .line 260
    return-void
.end method


# virtual methods
.method getValue()Z
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/UserSettingsManager$UserSetting;->defaultVal:Z

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/UserSettingsManager$UserSetting;->value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method
