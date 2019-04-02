.class final enum Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl$4;
.super Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;
.source "ConfigurationImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;
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
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl$1;)V

    return-void
.end method


# virtual methods
.method validate(Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;)V
    .locals 4
    .param p1, "specialType"    # Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    invoke-super {p0, p1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->validate(Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;)V

    .line 57
    invoke-virtual {p1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->getEditActivityClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "Edit activity must be null"

    invoke-static {v0, v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->access$100(ZLjava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->getInteractActivityClassName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Interact activity must be null"

    invoke-static {v0, v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->access$100(ZLjava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/google/android/apps/photos/api/PhotoOemProvider/SpecialType;->getLaunchActivityClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_2
    const-string v0, "Launch activity must not be null"

    invoke-static {v1, v0}, Lcom/google/android/apps/photos/api/PhotoOemProvider/ConfigurationImpl;->access$100(ZLjava/lang/String;)V

    .line 62
    return-void

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    :cond_1
    move v0, v2

    .line 58
    goto :goto_1

    :cond_2
    move v1, v2

    .line 60
    goto :goto_2
.end method
