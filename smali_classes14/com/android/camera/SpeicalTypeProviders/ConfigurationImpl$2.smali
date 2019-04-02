.class final enum Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl$2;
.super Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;
.source "ConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl$1;)V

    return-void
.end method


# virtual methods
.method validate(Lcom/android/camera/SpeicalTypeProviders/SpecialType;)V
    .locals 4
    .param p1, "specialType"    # Lcom/android/camera/SpeicalTypeProviders/SpecialType;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 25
    invoke-super {p0, p1}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->validate(Lcom/android/camera/SpeicalTypeProviders/SpecialType;)V

    .line 31
    invoke-virtual {p1}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->getInteractActivityClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Interact activity must be null"

    invoke-static {v0, v3}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->access$100(ZLjava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Lcom/android/camera/SpeicalTypeProviders/SpecialType;->getLaunchActivityClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_1
    const-string v0, "Launch activity must be null"

    invoke-static {v1, v0}, Lcom/android/camera/SpeicalTypeProviders/ConfigurationImpl;->access$100(ZLjava/lang/String;)V

    .line 35
    return-void

    :cond_0
    move v0, v2

    .line 31
    goto :goto_0

    :cond_1
    move v1, v2

    .line 33
    goto :goto_1
.end method
