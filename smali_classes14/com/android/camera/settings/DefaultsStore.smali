.class Lcom/android/camera/settings/DefaultsStore;
.super Ljava/lang/Object;
.source "DefaultsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/settings/DefaultsStore$Defaults;
    }
.end annotation


# static fields
.field private static mDefaultsInternalStore:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/camera/settings/DefaultsStore$Defaults;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/camera/settings/DefaultsStore;->mDefaultsInternalStore:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 83
    sget-object v1, Lcom/android/camera/settings/DefaultsStore;->mDefaultsInternalStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/DefaultsStore$Defaults;

    .line 84
    .local v0, "defaults":Lcom/android/camera/settings/DefaultsStore$Defaults;
    if-nez v0, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 87
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/settings/DefaultsStore$Defaults;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPossibleValues(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 95
    sget-object v1, Lcom/android/camera/settings/DefaultsStore;->mDefaultsInternalStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/settings/DefaultsStore$Defaults;

    .line 96
    .local v0, "defaults":Lcom/android/camera/settings/DefaultsStore$Defaults;
    if-nez v0, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 99
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/settings/DefaultsStore$Defaults;->getPossibleValues()[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public storeDefaults(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "possibleValues"    # [Ljava/lang/String;

    .prologue
    .line 71
    sget-object v1, Lcom/android/camera/settings/DefaultsStore;->mDefaultsInternalStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    sget-object v1, Lcom/android/camera/settings/DefaultsStore;->mDefaultsInternalStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    new-instance v0, Lcom/android/camera/settings/DefaultsStore$Defaults;

    invoke-direct {v0, p2, p3}, Lcom/android/camera/settings/DefaultsStore$Defaults;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 75
    .local v0, "defaults":Lcom/android/camera/settings/DefaultsStore$Defaults;
    sget-object v1, Lcom/android/camera/settings/DefaultsStore;->mDefaultsInternalStore:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    return-void
.end method
