.class public Lcom/android/camera/processing/memory/LruPool$Configuration;
.super Ljava/lang/Object;
.source "LruPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/memory/LruPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TKey:",
        "Ljava/lang/Object;",
        "TValue:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lcom/android/camera/processing/memory/LruPool$Configuration;, "Lcom/android/camera/processing/memory/LruPool$Configuration<TTKey;TTValue;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)TTValue;"
        }
    .end annotation

    .prologue
    .line 70
    .local p0, "this":Lcom/android/camera/processing/memory/LruPool$Configuration;, "Lcom/android/camera/processing/memory/LruPool$Configuration<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    const/4 v0, 0x0

    return-object v0
.end method

.method entryEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "this":Lcom/android/camera/processing/memory/LruPool$Configuration;, "Lcom/android/camera/processing/memory/LruPool$Configuration<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    return-void
.end method

.method sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;TTValue;)I"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/android/camera/processing/memory/LruPool$Configuration;, "Lcom/android/camera/processing/memory/LruPool$Configuration<TTKey;TTValue;>;"
    .local p1, "key":Ljava/lang/Object;, "TTKey;"
    .local p2, "value":Ljava/lang/Object;, "TTValue;"
    const/4 v0, 0x1

    return v0
.end method
