""

load("@io_bazel_rules_dotnet//dotnet/private:rules/libraryset.bzl", "core_libraryset")
load("@io_bazel_rules_dotnet//dotnet/private:rules/stdlib.bzl", "core_stdlib_internal")

# buildifier: disable=unnamed-macro
def define_runtime():
    "Declares runtime"
    core_stdlib_internal(
        name = "system.private.xml.dll",
        version = "6.0.0.0",
        ref = ":core/shared/Microsoft.NETCore.App/6.0.1/System.Private.Xml.dll",
        stdlib_path = ":core/shared/Microsoft.NETCore.App/6.0.1/System.Private.Xml.dll",
        deps = [
            ":system.runtime.dll",
            ":system.runtime.interopservices.dll",
            ":system.collections.dll",
            ":system.memory.dll",
            ":system.diagnostics.tracesource.dll",
            ":system.runtime.compilerservices.unsafe.dll",
            ":system.text.regularexpressions.dll",
            ":system.net.primitives.dll",
            ":system.net.http.dll",
            ":system.threading.dll",
            ":system.text.encoding.extensions.dll",
            ":system.collections.nongeneric.dll",
            ":system.reflection.emit.dll",
            ":system.reflection.emit.lightweight.dll",
            ":system.reflection.emit.ilgeneration.dll",
            ":system.reflection.primitives.dll",
            ":system.objectmodel.dll",
            ":system.collections.specialized.dll",
            ":system.diagnostics.tracing.dll",
            ":system.threading.thread.dll",
            ":system.security.cryptography.algorithms.dll",
            ":system.collections.concurrent.dll",
            ":system.linq.expressions.dll",
        ],
    )
    core_stdlib_internal(
        name = "system.net.quic.dll",
        version = "6.0.0.0",
        ref = ":core/shared/Microsoft.NETCore.App/6.0.1/System.Net.Quic.dll",
        stdlib_path = ":core/shared/Microsoft.NETCore.App/6.0.1/System.Net.Quic.dll",
        deps = [
            ":system.runtime.dll",
            ":system.runtime.interopservices.dll",
            ":system.security.cryptography.x509certificates.dll",
            ":system.threading.dll",
            ":system.diagnostics.tracing.dll",
            ":system.memory.dll",
            ":system.net.primitives.dll",
            ":system.net.security.dll",
            ":system.security.cryptography.encoding.dll",
            ":system.collections.concurrent.dll",
            ":system.threading.channels.dll",
            ":system.collections.nongeneric.dll",
            ":system.collections.dll",
        ],
    )
    core_stdlib_internal(
        name = "system.private.corelib.dll",
        version = "6.0.0.0",
        ref = ":core/shared/Microsoft.NETCore.App/6.0.1/System.Private.CoreLib.dll",
        stdlib_path = ":core/shared/Microsoft.NETCore.App/6.0.1/System.Private.CoreLib.dll",
        deps = [
        ],
    )
    core_stdlib_internal(
        name = "system.private.datacontractserialization.dll",
        version = "6.0.0.0",
        ref = ":core/shared/Microsoft.NETCore.App/6.0.1/System.Private.DataContractSerialization.dll",
        stdlib_path = ":core/shared/Microsoft.NETCore.App/6.0.1/System.Private.DataContractSerialization.dll",
        deps = [
            ":system.runtime.dll",
            ":system.xml.readerwriter.dll",
            ":system.text.encoding.extensions.dll",
            ":system.collections.dll",
            ":system.reflection.emit.lightweight.dll",
            ":system.reflection.emit.ilgeneration.dll",
            ":system.reflection.primitives.dll",
            ":system.runtime.serialization.primitives.dll",
            ":system.xml.xmlserializer.dll",
            ":system.collections.nongeneric.dll",
            ":system.runtime.serialization.formatters.dll",
            ":system.memory.dll",
            ":system.threading.dll",
            ":system.linq.dll",
            ":system.text.regularexpressions.dll",
            ":system.xml.xdocument.dll",
            ":system.collections.specialized.dll",
        ],
    )
    core_stdlib_internal(
        name = "system.private.uri.dll",
        version = "6.0.0.0",
        ref = ":core/shared/Microsoft.NETCore.App/6.0.1/System.Private.Uri.dll",
        stdlib_path = ":core/shared/Microsoft.NETCore.App/6.0.1/System.Private.Uri.dll",
        deps = [
            ":system.private.corelib.dll",
        ],
    )
    core_stdlib_internal(
        name = "system.private.xml.linq.dll",
        version = "6.0.0.0",
        ref = ":core/shared/Microsoft.NETCore.App/6.0.1/System.Private.Xml.Linq.dll",
        stdlib_path = ":core/shared/Microsoft.NETCore.App/6.0.1/System.Private.Xml.Linq.dll",
        deps = [
            ":system.runtime.dll",
            ":system.private.xml.dll",
            ":system.threading.dll",
            ":system.linq.dll",
            ":system.collections.dll",
            ":system.objectmodel.dll",
            ":system.threading.thread.dll",
            ":system.memory.dll",
        ],
    )

    core_libraryset(
        name = "runtime",
        deps = select({
            "@bazel_tools//src/conditions:darwin": [
                ":microsoft.csharp.dll",
                ":system.web.dll",
                ":system.diagnostics.contracts.dll",
                ":system.servicemodel.web.dll",
                ":system.diagnostics.fileversioninfo.dll",
                ":system.runtime.intrinsics.dll",
                ":system.net.security.dll",
                ":system.xml.xpath.xdocument.dll",
                ":system.xml.linq.dll",
                ":system.net.websockets.client.dll",
                ":system.io.dll",
                ":system.dynamic.runtime.dll",
                ":system.runtime.serialization.xml.dll",
                ":system.security.principal.dll",
                ":system.reflection.dll",
                ":system.threading.threadpool.dll",
                ":system.net.dll",
                ":system.io.compression.filesystem.dll",
                ":system.reflection.metadata.dll",
                ":system.security.cryptography.cng.dll",
                ":system.componentmodel.eventbasedasync.dll",
                ":system.diagnostics.diagnosticsource.dll",
                ":system.runtime.compilerservices.visualc.dll",
                ":system.threading.dll",
                ":netstandard.dll",
                ":microsoft.visualbasic.dll",
                ":system.io.unmanagedmemorystream.dll",
                ":system.io.filesystem.accesscontrol.dll",
                ":system.xml.xpath.dll",
                ":system.xml.xmldocument.dll",
                ":system.configuration.dll",
                ":system.resources.writer.dll",
                ":system.console.dll",
                ":system.net.sockets.dll",
                ":system.net.http.dll",
                ":system.web.httputility.dll",
                ":system.text.encoding.extensions.dll",
                ":system.net.networkinformation.dll",
                ":microsoft.visualbasic.core.dll",
                ":system.security.principal.windows.dll",
                ":system.security.claims.dll",
                ":system.componentmodel.primitives.dll",
                ":system.io.filesystem.driveinfo.dll",
                ":system.io.compression.brotli.dll",
                ":system.io.pipes.accesscontrol.dll",
                ":system.security.cryptography.x509certificates.dll",
                ":system.reflection.primitives.dll",
                ":system.runtime.numerics.dll",
                ":system.io.filesystem.watcher.dll",
                ":system.diagnostics.tracesource.dll",
                ":system.reflection.emit.lightweight.dll",
                ":system.text.encoding.codepages.dll",
                ":system.linq.expressions.dll",
                ":system.threading.timer.dll",
                ":system.runtime.interopservices.dll",
                ":system.io.pipes.dll",
                ":system.net.httplistener.dll",
                ":system.text.regularexpressions.dll",
                ":system.runtime.serialization.dll",
                ":system.io.compression.dll",
                ":system.threading.tasks.parallel.dll",
                ":windowsbase.dll",
                ":system.private.xml.dll",
                ":system.data.datasetextensions.dll",
                ":system.collections.nongeneric.dll",
                ":system.collections.concurrent.dll",
                ":system.net.quic.dll",
                ":system.threading.overlapped.dll",
                ":system.text.encodings.web.dll",
                ":system.xml.serialization.dll",
                ":system.runtime.handles.dll",
                ":system.net.webproxy.dll",
                ":system.text.json.dll",
                ":system.objectmodel.dll",
                ":system.private.corelib.dll",
                ":system.net.webheadercollection.dll",
                ":system.runtime.interopservices.runtimeinformation.dll",
                ":system.componentmodel.typeconverter.dll",
                ":system.net.mail.dll",
                ":system.threading.tasks.extensions.dll",
                ":system.linq.parallel.dll",
                ":system.xml.xdocument.dll",
                ":system.security.securestring.dll",
                ":system.componentmodel.annotations.dll",
                ":system.private.datacontractserialization.dll",
                ":system.io.filesystem.primitives.dll",
                ":mscorlib.dll",
                ":system.net.http.json.dll",
                ":system.security.cryptography.primitives.dll",
                ":system.io.compression.zipfile.dll",
                ":system.windows.dll",
                ":system.linq.queryable.dll",
                ":system.resources.resourcemanager.dll",
                ":system.resources.reader.dll",
                ":system.collections.dll",
                ":system.reflection.emit.ilgeneration.dll",
                ":system.data.common.dll",
                ":system.net.nameresolution.dll",
                ":system.componentmodel.dll",
                ":system.private.uri.dll",
                ":system.runtime.loader.dll",
                ":system.xml.readerwriter.dll",
                ":system.threading.tasks.dll",
                ":system.diagnostics.tracing.dll",
                ":system.appcontext.dll",
                ":system.buffers.dll",
                ":system.security.cryptography.csp.dll",
                ":system.diagnostics.textwritertracelistener.dll",
                ":system.text.encoding.dll",
                ":system.transactions.dll",
                ":system.threading.tasks.dataflow.dll",
                ":system.io.memorymappedfiles.dll",
                ":system.security.cryptography.openssl.dll",
                ":system.runtime.compilerservices.unsafe.dll",
                ":microsoft.win32.registry.dll",
                ":system.globalization.dll",
                ":system.collections.specialized.dll",
                ":system.valuetuple.dll",
                ":system.runtime.dll",
                ":system.net.servicepoint.dll",
                ":system.xml.xmlserializer.dll",
                ":system.reflection.extensions.dll",
                ":system.globalization.extensions.dll",
                ":system.runtime.extensions.dll",
                ":system.data.dll",
                ":system.dll",
                ":system.security.cryptography.encoding.dll",
                ":system.io.isolatedstorage.dll",
                ":system.security.accesscontrol.dll",
                ":system.reflection.typeextensions.dll",
                ":system.globalization.calendars.dll",
                ":system.net.requests.dll",
                ":system.net.websockets.dll",
                ":system.reflection.emit.dll",
                ":system.io.filesystem.dll",
                ":system.runtime.serialization.json.dll",
                ":system.security.cryptography.algorithms.dll",
                ":system.threading.thread.dll",
                ":system.numerics.vectors.dll",
                ":system.serviceprocess.dll",
                ":system.linq.dll",
                ":system.diagnostics.process.dll",
                ":system.numerics.dll",
                ":system.xml.dll",
                ":system.diagnostics.tools.dll",
                ":system.collections.immutable.dll",
                ":system.diagnostics.debug.dll",
                ":microsoft.win32.primitives.dll",
                ":system.runtime.serialization.primitives.dll",
                ":system.transactions.local.dll",
                ":system.drawing.primitives.dll",
                ":system.drawing.dll",
                ":system.runtime.serialization.formatters.dll",
                ":system.net.ping.dll",
                ":system.diagnostics.stacktrace.dll",
                ":system.security.dll",
                ":system.reflection.dispatchproxy.dll",
                ":system.core.dll",
                ":system.net.webclient.dll",
                ":system.formats.asn1.dll",
                ":system.componentmodel.dataannotations.dll",
                ":system.private.xml.linq.dll",
                ":system.memory.dll",
                ":system.net.primitives.dll",
                ":system.threading.channels.dll",
            ],
            "@bazel_tools//src/conditions:windows": [
                ":microsoft.csharp.dll",
                ":system.web.dll",
                ":system.diagnostics.contracts.dll",
                ":system.servicemodel.web.dll",
                ":system.diagnostics.fileversioninfo.dll",
                ":system.runtime.intrinsics.dll",
                ":system.net.security.dll",
                ":system.xml.xpath.xdocument.dll",
                ":system.xml.linq.dll",
                ":system.net.websockets.client.dll",
                ":system.io.dll",
                ":system.dynamic.runtime.dll",
                ":system.runtime.serialization.xml.dll",
                ":system.security.principal.dll",
                ":system.reflection.dll",
                ":system.threading.threadpool.dll",
                ":system.net.dll",
                ":system.io.compression.filesystem.dll",
                ":system.reflection.metadata.dll",
                ":system.security.cryptography.cng.dll",
                ":system.componentmodel.eventbasedasync.dll",
                ":system.diagnostics.diagnosticsource.dll",
                ":system.runtime.compilerservices.visualc.dll",
                ":system.threading.dll",
                ":netstandard.dll",
                ":microsoft.visualbasic.dll",
                ":system.io.unmanagedmemorystream.dll",
                ":system.io.filesystem.accesscontrol.dll",
                ":system.xml.xpath.dll",
                ":system.xml.xmldocument.dll",
                ":system.configuration.dll",
                ":system.resources.writer.dll",
                ":system.console.dll",
                ":system.net.sockets.dll",
                ":system.net.http.dll",
                ":system.web.httputility.dll",
                ":system.text.encoding.extensions.dll",
                ":system.net.networkinformation.dll",
                ":microsoft.visualbasic.core.dll",
                ":system.security.principal.windows.dll",
                ":system.security.claims.dll",
                ":system.componentmodel.primitives.dll",
                ":system.io.filesystem.driveinfo.dll",
                ":system.io.compression.brotli.dll",
                ":system.io.pipes.accesscontrol.dll",
                ":system.security.cryptography.x509certificates.dll",
                ":system.reflection.primitives.dll",
                ":system.runtime.numerics.dll",
                ":system.io.filesystem.watcher.dll",
                ":system.diagnostics.tracesource.dll",
                ":system.reflection.emit.lightweight.dll",
                ":system.text.encoding.codepages.dll",
                ":system.linq.expressions.dll",
                ":system.threading.timer.dll",
                ":system.runtime.interopservices.dll",
                ":system.io.pipes.dll",
                ":system.net.httplistener.dll",
                ":system.text.regularexpressions.dll",
                ":system.runtime.serialization.dll",
                ":system.io.compression.dll",
                ":system.threading.tasks.parallel.dll",
                ":windowsbase.dll",
                ":system.private.xml.dll",
                ":system.data.datasetextensions.dll",
                ":system.collections.nongeneric.dll",
                ":system.collections.concurrent.dll",
                ":system.net.quic.dll",
                ":system.threading.overlapped.dll",
                ":system.text.encodings.web.dll",
                ":system.xml.serialization.dll",
                ":system.runtime.handles.dll",
                ":system.net.webproxy.dll",
                ":system.text.json.dll",
                ":system.objectmodel.dll",
                ":system.private.corelib.dll",
                ":system.net.webheadercollection.dll",
                ":system.runtime.interopservices.runtimeinformation.dll",
                ":system.componentmodel.typeconverter.dll",
                ":system.net.mail.dll",
                ":system.threading.tasks.extensions.dll",
                ":system.linq.parallel.dll",
                ":system.xml.xdocument.dll",
                ":system.security.securestring.dll",
                ":system.componentmodel.annotations.dll",
                ":system.private.datacontractserialization.dll",
                ":system.io.filesystem.primitives.dll",
                ":mscorlib.dll",
                ":system.net.http.json.dll",
                ":system.security.cryptography.primitives.dll",
                ":system.io.compression.zipfile.dll",
                ":system.windows.dll",
                ":system.linq.queryable.dll",
                ":system.resources.resourcemanager.dll",
                ":system.resources.reader.dll",
                ":system.collections.dll",
                ":system.reflection.emit.ilgeneration.dll",
                ":system.data.common.dll",
                ":system.net.nameresolution.dll",
                ":system.componentmodel.dll",
                ":system.private.uri.dll",
                ":system.runtime.loader.dll",
                ":system.xml.readerwriter.dll",
                ":system.threading.tasks.dll",
                ":system.diagnostics.tracing.dll",
                ":system.appcontext.dll",
                ":system.buffers.dll",
                ":system.security.cryptography.csp.dll",
                ":system.diagnostics.textwritertracelistener.dll",
                ":system.text.encoding.dll",
                ":system.transactions.dll",
                ":system.threading.tasks.dataflow.dll",
                ":system.io.memorymappedfiles.dll",
                ":system.security.cryptography.openssl.dll",
                ":system.runtime.compilerservices.unsafe.dll",
                ":microsoft.win32.registry.dll",
                ":system.globalization.dll",
                ":system.collections.specialized.dll",
                ":system.valuetuple.dll",
                ":system.runtime.dll",
                ":system.net.servicepoint.dll",
                ":system.xml.xmlserializer.dll",
                ":system.reflection.extensions.dll",
                ":system.globalization.extensions.dll",
                ":system.runtime.extensions.dll",
                ":system.data.dll",
                ":system.dll",
                ":system.security.cryptography.encoding.dll",
                ":system.io.isolatedstorage.dll",
                ":system.security.accesscontrol.dll",
                ":system.reflection.typeextensions.dll",
                ":system.globalization.calendars.dll",
                ":system.net.requests.dll",
                ":system.net.websockets.dll",
                ":system.reflection.emit.dll",
                ":system.io.filesystem.dll",
                ":system.runtime.serialization.json.dll",
                ":system.security.cryptography.algorithms.dll",
                ":system.threading.thread.dll",
                ":system.numerics.vectors.dll",
                ":system.serviceprocess.dll",
                ":system.linq.dll",
                ":system.diagnostics.process.dll",
                ":system.numerics.dll",
                ":system.xml.dll",
                ":system.diagnostics.tools.dll",
                ":system.collections.immutable.dll",
                ":system.diagnostics.debug.dll",
                ":microsoft.win32.primitives.dll",
                ":system.runtime.serialization.primitives.dll",
                ":system.transactions.local.dll",
                ":system.drawing.primitives.dll",
                ":system.drawing.dll",
                ":system.runtime.serialization.formatters.dll",
                ":system.net.ping.dll",
                ":system.diagnostics.stacktrace.dll",
                ":system.security.dll",
                ":system.reflection.dispatchproxy.dll",
                ":system.core.dll",
                ":system.net.webclient.dll",
                ":system.formats.asn1.dll",
                ":system.componentmodel.dataannotations.dll",
                ":system.private.xml.linq.dll",
                ":system.memory.dll",
                ":system.net.primitives.dll",
                ":system.threading.channels.dll",
            ],
            "//conditions:default": [
                ":microsoft.csharp.dll",
                ":system.web.dll",
                ":system.diagnostics.contracts.dll",
                ":system.servicemodel.web.dll",
                ":system.diagnostics.fileversioninfo.dll",
                ":system.runtime.intrinsics.dll",
                ":system.net.security.dll",
                ":system.xml.xpath.xdocument.dll",
                ":system.xml.linq.dll",
                ":system.net.websockets.client.dll",
                ":system.io.dll",
                ":system.dynamic.runtime.dll",
                ":system.runtime.serialization.xml.dll",
                ":system.security.principal.dll",
                ":system.reflection.dll",
                ":system.threading.threadpool.dll",
                ":system.net.dll",
                ":system.io.compression.filesystem.dll",
                ":system.reflection.metadata.dll",
                ":system.security.cryptography.cng.dll",
                ":system.componentmodel.eventbasedasync.dll",
                ":system.diagnostics.diagnosticsource.dll",
                ":system.runtime.compilerservices.visualc.dll",
                ":system.threading.dll",
                ":netstandard.dll",
                ":microsoft.visualbasic.dll",
                ":system.io.unmanagedmemorystream.dll",
                ":system.io.filesystem.accesscontrol.dll",
                ":system.xml.xpath.dll",
                ":system.xml.xmldocument.dll",
                ":system.configuration.dll",
                ":system.resources.writer.dll",
                ":system.console.dll",
                ":system.net.sockets.dll",
                ":system.net.http.dll",
                ":system.web.httputility.dll",
                ":system.text.encoding.extensions.dll",
                ":system.net.networkinformation.dll",
                ":microsoft.visualbasic.core.dll",
                ":system.security.principal.windows.dll",
                ":system.security.claims.dll",
                ":system.componentmodel.primitives.dll",
                ":system.io.filesystem.driveinfo.dll",
                ":system.io.compression.brotli.dll",
                ":system.io.pipes.accesscontrol.dll",
                ":system.security.cryptography.x509certificates.dll",
                ":system.reflection.primitives.dll",
                ":system.runtime.numerics.dll",
                ":system.io.filesystem.watcher.dll",
                ":system.diagnostics.tracesource.dll",
                ":system.reflection.emit.lightweight.dll",
                ":system.text.encoding.codepages.dll",
                ":system.linq.expressions.dll",
                ":system.threading.timer.dll",
                ":system.runtime.interopservices.dll",
                ":system.io.pipes.dll",
                ":system.net.httplistener.dll",
                ":system.text.regularexpressions.dll",
                ":system.runtime.serialization.dll",
                ":system.io.compression.dll",
                ":system.threading.tasks.parallel.dll",
                ":windowsbase.dll",
                ":system.private.xml.dll",
                ":system.data.datasetextensions.dll",
                ":system.collections.nongeneric.dll",
                ":system.collections.concurrent.dll",
                ":system.net.quic.dll",
                ":system.threading.overlapped.dll",
                ":system.text.encodings.web.dll",
                ":system.xml.serialization.dll",
                ":system.runtime.handles.dll",
                ":system.net.webproxy.dll",
                ":system.text.json.dll",
                ":system.objectmodel.dll",
                ":system.private.corelib.dll",
                ":system.net.webheadercollection.dll",
                ":system.runtime.interopservices.runtimeinformation.dll",
                ":system.componentmodel.typeconverter.dll",
                ":system.net.mail.dll",
                ":system.threading.tasks.extensions.dll",
                ":system.linq.parallel.dll",
                ":system.xml.xdocument.dll",
                ":system.security.securestring.dll",
                ":system.componentmodel.annotations.dll",
                ":system.private.datacontractserialization.dll",
                ":system.io.filesystem.primitives.dll",
                ":mscorlib.dll",
                ":system.net.http.json.dll",
                ":system.security.cryptography.primitives.dll",
                ":system.io.compression.zipfile.dll",
                ":system.windows.dll",
                ":system.linq.queryable.dll",
                ":system.resources.resourcemanager.dll",
                ":system.resources.reader.dll",
                ":system.collections.dll",
                ":system.reflection.emit.ilgeneration.dll",
                ":system.data.common.dll",
                ":system.net.nameresolution.dll",
                ":system.componentmodel.dll",
                ":system.private.uri.dll",
                ":system.runtime.loader.dll",
                ":system.xml.readerwriter.dll",
                ":system.threading.tasks.dll",
                ":system.diagnostics.tracing.dll",
                ":system.appcontext.dll",
                ":system.buffers.dll",
                ":system.security.cryptography.csp.dll",
                ":system.diagnostics.textwritertracelistener.dll",
                ":system.text.encoding.dll",
                ":system.transactions.dll",
                ":system.threading.tasks.dataflow.dll",
                ":system.io.memorymappedfiles.dll",
                ":system.security.cryptography.openssl.dll",
                ":system.runtime.compilerservices.unsafe.dll",
                ":microsoft.win32.registry.dll",
                ":system.globalization.dll",
                ":system.collections.specialized.dll",
                ":system.valuetuple.dll",
                ":system.runtime.dll",
                ":system.net.servicepoint.dll",
                ":system.xml.xmlserializer.dll",
                ":system.reflection.extensions.dll",
                ":system.globalization.extensions.dll",
                ":system.runtime.extensions.dll",
                ":system.data.dll",
                ":system.dll",
                ":system.security.cryptography.encoding.dll",
                ":system.io.isolatedstorage.dll",
                ":system.security.accesscontrol.dll",
                ":system.reflection.typeextensions.dll",
                ":system.globalization.calendars.dll",
                ":system.net.requests.dll",
                ":system.net.websockets.dll",
                ":system.reflection.emit.dll",
                ":system.io.filesystem.dll",
                ":system.runtime.serialization.json.dll",
                ":system.security.cryptography.algorithms.dll",
                ":system.threading.thread.dll",
                ":system.numerics.vectors.dll",
                ":system.serviceprocess.dll",
                ":system.linq.dll",
                ":system.diagnostics.process.dll",
                ":system.numerics.dll",
                ":system.xml.dll",
                ":system.diagnostics.tools.dll",
                ":system.collections.immutable.dll",
                ":system.diagnostics.debug.dll",
                ":microsoft.win32.primitives.dll",
                ":system.runtime.serialization.primitives.dll",
                ":system.transactions.local.dll",
                ":system.drawing.primitives.dll",
                ":system.drawing.dll",
                ":system.runtime.serialization.formatters.dll",
                ":system.net.ping.dll",
                ":system.diagnostics.stacktrace.dll",
                ":system.security.dll",
                ":system.reflection.dispatchproxy.dll",
                ":system.core.dll",
                ":system.net.webclient.dll",
                ":system.formats.asn1.dll",
                ":system.componentmodel.dataannotations.dll",
                ":system.private.xml.linq.dll",
                ":system.memory.dll",
                ":system.net.primitives.dll",
                ":system.threading.channels.dll",
            ],
        }),
        data = select({
            "@bazel_tools//src/conditions:darwin": [
                ":core/shared/Microsoft.NETCore.App/6.0.1/createdump",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libcoreclr.dylib",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libSystem.Native.dylib",
                ":core/shared/Microsoft.NETCore.App/6.0.1/Microsoft.NETCore.App.deps.json",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libSystem.IO.Compression.Native.dylib",
                ":core/shared/Microsoft.NETCore.App/6.0.1/Microsoft.NETCore.App.runtimeconfig.json",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libSystem.Globalization.Native.dylib",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libSystem.Security.Cryptography.Native.Apple.dylib",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libmscordaccore.dylib",
                ":core/shared/Microsoft.NETCore.App/6.0.1/.version",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libSystem.Net.Security.Native.dylib",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libmscordbi.dylib",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libhostpolicy.dylib",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libSystem.Security.Cryptography.Native.OpenSsl.dylib",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libdbgshim.dylib",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libclrjit.dylib",
                ":core/host/fxr/6.0.1/libhostfxr.dylib",
            ],
            "@bazel_tools//src/conditions:windows": [
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-time-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-filesystem-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/mscordbi.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-utility-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-console-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-processenvironment-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/ucrtbase.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-file-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/hostpolicy.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-errorhandling-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/Microsoft.NETCore.App.deps.json",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-process-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/clrjit.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-heap-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/dbgshim.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-processthreads-l1-1-1.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-processthreads-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-console-l1-2-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/Microsoft.NETCore.App.runtimeconfig.json",
                ":core/shared/Microsoft.NETCore.App/6.0.1/msquic.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-convert-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-private-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-file-l2-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-debug-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-stdio-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-localization-l1-2-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-datetime-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/createdump.exe",
                ":core/shared/Microsoft.NETCore.App/6.0.1/System.IO.Compression.Native.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-math-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-file-l1-2-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/mscordaccore.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-timezone-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-rtlsupport-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/coreclr.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/Microsoft.DiaSymReader.Native.amd64.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-handle-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-synch-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-string-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-interlocked-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-memory-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/.version",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-util-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-namedpipe-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/mscorrc.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/mscordaccore_amd64_amd64_6.0.121.56705.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/clretwrc.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-conio-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-runtime-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-string-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-multibyte-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-synch-l1-2-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-profile-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-locale-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-heap-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-sysinfo-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-core-libraryloader-l1-1-0.dll",
                ":core/shared/Microsoft.NETCore.App/6.0.1/api-ms-win-crt-environment-l1-1-0.dll",
                ":core/host/fxr/6.0.1/hostfxr.dll",
            ],
            "//conditions:default": [
                ":core/shared/Microsoft.NETCore.App/6.0.1/createdump",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libmscordbi.so",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libSystem.Native.so",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libmscordaccore.so",
                ":core/shared/Microsoft.NETCore.App/6.0.1/Microsoft.NETCore.App.deps.json",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libclrjit.so",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libcoreclrtraceptprovider.so",
                ":core/shared/Microsoft.NETCore.App/6.0.1/Microsoft.NETCore.App.runtimeconfig.json",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libSystem.IO.Compression.Native.so",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libcoreclr.so",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libdbgshim.so",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libSystem.Security.Cryptography.Native.OpenSsl.so",
                ":core/shared/Microsoft.NETCore.App/6.0.1/.version",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libSystem.Globalization.Native.so",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libhostpolicy.so",
                ":core/shared/Microsoft.NETCore.App/6.0.1/libSystem.Net.Security.Native.so",
                ":core/host/fxr/6.0.1/libhostfxr.so",
            ],
        }),
    )
