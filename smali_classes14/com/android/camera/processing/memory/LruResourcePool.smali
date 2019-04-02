.class public interface abstract Lcom/android/camera/processing/memory/LruResourcePool;
.super Ljava/lang/Object;
.source "LruResourcePool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/memory/LruResourcePool$Resource;
    }
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


# virtual methods
.method public abstract acquire(Ljava/lang/Object;)Lcom/android/camera/processing/memory/LruResourcePool$Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTKey;)",
            "Lcom/android/camera/processing/memory/LruResourcePool$Resource",
            "<TTValue;>;"
        }
    .end annotation
.end method
