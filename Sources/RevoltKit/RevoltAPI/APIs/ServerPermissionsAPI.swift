//
// ServerPermissionsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class ServerPermissionsAPI {

    /**
     Set Default Permission
     
     - parameter server: (path) Server ID 
     - parameter setDefaultPermissionModel: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func serversServerPermissionsDefaultPut(server: ServerIDModel, setDefaultPermissionModel: ServersServerPermissionsSetDefaultPermissionModel? = nil, apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        serversServerPermissionsDefaultPutWithRequestBuilder(server: server, setDefaultPermissionModel: setDefaultPermissionModel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Set Default Permission
     - PUT /servers/:server/permissions/default
     - Sets permissions for the default role in this server.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter server: (path) Server ID 
     - parameter setDefaultPermissionModel: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func serversServerPermissionsDefaultPutWithRequestBuilder(server: ServerIDModel, setDefaultPermissionModel: ServersServerPermissionsSetDefaultPermissionModel? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/servers/:server/permissions/default"
        let serverPreEscape = "\(APIHelper.mapValueToPathItem(server))"
        let serverPostEscape = serverPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{server}", with: serverPostEscape, options: .literal, range: nil)
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setDefaultPermissionModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = RevoltAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Set Role Permission
     
     - parameter server: (path) Server ID 
     - parameter role: (path) Role ID 
     - parameter setRolePermissionModel: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func serversServerPermissionsRolePut(server: ServerIDModel, role: RoleIDModel, setRolePermissionModel: ServersServerPermissionsSetRolePermissionModel? = nil, apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        serversServerPermissionsRolePutWithRequestBuilder(server: server, role: role, setRolePermissionModel: setRolePermissionModel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Set Role Permission
     - PUT /servers/:server/permissions/:role
     - Sets permissions for the specified role in this server.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter server: (path) Server ID 
     - parameter role: (path) Role ID 
     - parameter setRolePermissionModel: (body)  (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func serversServerPermissionsRolePutWithRequestBuilder(server: ServerIDModel, role: RoleIDModel, setRolePermissionModel: ServersServerPermissionsSetRolePermissionModel? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/servers/:server/permissions/:role"
        let serverPreEscape = "\(APIHelper.mapValueToPathItem(server))"
        let serverPostEscape = serverPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{server}", with: serverPostEscape, options: .literal, range: nil)
        let rolePreEscape = "\(APIHelper.mapValueToPathItem(role))"
        let rolePostEscape = rolePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{role}", with: rolePostEscape, options: .literal, range: nil)
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: setRolePermissionModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = RevoltAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PUT", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Create Role
     
     - parameter server: (path) Server ID 
     - parameter permissionsCreateRoleModel: (body)  (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func serversServerRolesPost(server: ServerIDModel, permissionsCreateRoleModel: ServersServerPermissionsCreateRoleModel? = nil, apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: ServersServerPermissionsCreateRoleResponseModel?, _ error: Error?) -> Void)) {
        serversServerRolesPostWithRequestBuilder(server: server, permissionsCreateRoleModel: permissionsCreateRoleModel).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Create Role
     - POST /servers/:server/roles
     - Creates a new server role.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter server: (path) Server ID 
     - parameter permissionsCreateRoleModel: (body)  (optional)
     - returns: RequestBuilder<InlineResponse2006Model> 
     */
    open class func serversServerRolesPostWithRequestBuilder(server: ServerIDModel, permissionsCreateRoleModel: ServersServerPermissionsCreateRoleModel? = nil) -> RequestBuilder<ServersServerPermissionsCreateRoleResponseModel> {
        var localVariablePath = "/servers/:server/roles"
        let serverPreEscape = "\(APIHelper.mapValueToPathItem(server))"
        let serverPostEscape = serverPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{server}", with: serverPostEscape, options: .literal, range: nil)
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: permissionsCreateRoleModel)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<ServersServerPermissionsCreateRoleResponseModel>.Type = RevoltAPIClient.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Delete Role
     
     - parameter server: (path) Server ID 
     - parameter role: (path) Role ID 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func serversServerRolesRoleDelete(server: ServerIDModel, role: RoleIDModel, apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        serversServerRolesRoleDeleteWithRequestBuilder(server: server, role: role).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Delete Role
     - DELETE /servers/:server/roles/:role
     - Deletes a server role by ID.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter server: (path) Server ID 
     - parameter role: (path) Role ID 
     - returns: RequestBuilder<Void> 
     */
    open class func serversServerRolesRoleDeleteWithRequestBuilder(server: ServerIDModel, role: RoleIDModel) -> RequestBuilder<Void> {
        var localVariablePath = "/servers/:server/roles/:role"
        let serverPreEscape = "\(APIHelper.mapValueToPathItem(server))"
        let serverPostEscape = serverPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{server}", with: serverPostEscape, options: .literal, range: nil)
        let rolePreEscape = "\(APIHelper.mapValueToPathItem(role))"
        let rolePostEscape = rolePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{role}", with: rolePostEscape, options: .literal, range: nil)
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = RevoltAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Edit Role
     
     - parameter server: (path) Server ID 
     - parameter role: (path) Role ID 
     - parameter edits: (body) Requested changes to role object. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func serversServerRolesRolePatch(server: ServerIDModel, role: RoleIDModel, edits: RoleEditModel? = nil, apiResponseQueue: DispatchQueue = RevoltAPIClient.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        serversServerRolesRolePatchWithRequestBuilder(server: server, role: role, edits: edits).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Edit Role
     - PATCH /servers/:server/roles/:role
     - Edit a role object.
     - API Key:
       - type: apiKey x-bot-token 
       - name: Bot Token
     - API Key:
       - type: apiKey x-session-token 
       - name: Session Token
     - parameter server: (path) Server ID 
     - parameter role: (path) Role ID 
     - parameter edits: (body) Requested changes to role object. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func serversServerRolesRolePatchWithRequestBuilder(server: ServerIDModel, role: RoleIDModel, edits: RoleEditModel? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/servers/:server/roles/:role"
        let serverPreEscape = "\(APIHelper.mapValueToPathItem(server))"
        let serverPostEscape = serverPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{server}", with: serverPostEscape, options: .literal, range: nil)
        let rolePreEscape = "\(APIHelper.mapValueToPathItem(role))"
        let rolePostEscape = rolePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{role}", with: rolePostEscape, options: .literal, range: nil)
        let localVariableURLString = RevoltAPIClient.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: edits)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = RevoltAPIClient.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "PATCH", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
