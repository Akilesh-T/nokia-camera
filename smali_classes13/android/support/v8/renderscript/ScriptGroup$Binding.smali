.class public final Landroid/support/v8/renderscript/ScriptGroup$Binding;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v8/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Binding"
.end annotation


# instance fields
.field private final mField:Landroid/support/v8/renderscript/Script$FieldID;

.field private final mValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 0
    .param p1, "field"    # Landroid/support/v8/renderscript/Script$FieldID;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 987
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 988
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Binding;->mField:Landroid/support/v8/renderscript/Script$FieldID;

    .line 989
    iput-object p2, p0, Landroid/support/v8/renderscript/ScriptGroup$Binding;->mValue:Ljava/lang/Object;

    .line 990
    return-void
.end method


# virtual methods
.method public getField()Landroid/support/v8/renderscript/Script$FieldID;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Binding;->mField:Landroid/support/v8/renderscript/Script$FieldID;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Binding;->mValue:Ljava/lang/Object;

    return-object v0
.end method
