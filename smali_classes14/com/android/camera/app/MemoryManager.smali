.class public interface abstract Lcom/android/camera/app/MemoryManager;
.super Ljava/lang/Object;
.source "MemoryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/app/MemoryManager$MemoryListener;
    }
.end annotation


# static fields
.field public static final STATE_LOW_MEMORY:I = 0x1

.field public static final STATE_OK:I


# virtual methods
.method public abstract addListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V
.end method

.method public abstract getMaxAllowedNativeMemoryAllocation()I
.end method

.method public abstract queryMemory()Ljava/util/HashMap;
.end method

.method public abstract removeListener(Lcom/android/camera/app/MemoryManager$MemoryListener;)V
.end method
